class Scrape < ApplicationRecord
require 'open-uri'
require 'pdf/reader'
require 'json'

	# every few weeks, export and replace the bookmarks.html file, 
	# (exported from Chrome) to: app/assets/bookmarks/<bookmarks.html>
	# until you find a way to reach out to Chrome programatically

	def self.bookmarks
		bookmarks = []
		file = File.open(Rails.root.join('app', 'assets', 'bookmarks', 'bookmarks.html'))
    parse = Nokogiri::HTML(file)
    refs = parse.css('a').each do |item|
			ref = {
				title: item.text, 
				category: item.children.text,
				format: 'bookmark',
        url: item.values.first,
				description: 'bookmark'
			}
			bookmarks.push(ref)
		end
    Ref.import_bookmarks(bookmarks)
	end

	def self.gitfolders
		folders = []
		site = HTTParty.get('https://github.com/smithWEBtek/swt-v3/tree/master/app/assets/books')
		parse = Nokogiri::HTML(site)
		parse.css('.js-navigation-open').each do |item|
			folders.push(item.child.text)
		end
		folders.slice(1, folders.length-3)
	end

	def self.gitbooks
		folders = Scrape.gitfolders
		books = []
		book_list = []
		refs = []

		folders.each do |folder|
			site = HTTParty.get('https://github.com/smithWEBtek/swt-v3/tree/master/'+ "#{folder}")
			parse = Nokogiri::HTML(site)
			parse.css('.js-navigation-open').each do |item|
				book_list << item.child.text
			end

			books = book_list.slice(2, book_list.length)
			book_list = []

			books.each do |book|
				ref = {
					title: book,
					category: folder,
					format: 'pdf',
					description: 'book in git library',
					url: 'https://github.com/smithWEBtek/books/tree/master/'+ "#{folder}" + '/' + "#{book}"
				}
				refs.push(ref)
			end
			puts refs.count
		end
			Ref.import_bookmarks(refs)
	end 

	def self.import_chrome_bookmarks
		file = File.read(Rails.root.join('app', 'assets', 'bookmarks', 'chrome_bookmarks.json'))
		data_hash = JSON.parse(file)

 
	#  {"id"=>334,
	# 	"dateAddedLocal"=>"9/12/2017, 1:11:09 PM",
	# 	"dateAddedUTC"=>"2017-09-12T17:11:09.000Z",
	# 	"index"=>2,
	# 	"parentId"=>"330",
	# 	"title"=>"Amazon Web Services (AWS) - Cloud Computing Services",
	# 	"url"=>"https://aws.amazon.com/"},
	
	#  {"id"=>335,
	# 	"dateAddedLocal"=>"12/3/2017, 10:02:17 PM",
	# 	"dateAddedUTC"=>"2017-12-04T03:02:17.000Z",
	# 	"index"=>3,
	# 	"parentId"=>"330",
	# 	"title"=>"CodeFights",
	# 	"url"=>"https://codefights.com/"},

		# binding.pry 

	end
end
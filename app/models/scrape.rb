class Scrape < ApplicationRecord
require 'open-uri'
require 'pdf/reader'
require 'json'

	# every few weeks, export and replace the bookmarks.html file, 
	# (exported from Chrome) to: app/assets/bookmarks/<bookmarks.html>
	# until you find a way to reach out to Chrome programatically

def self.bookmarks
	file = File.read(Rails.root.join('app', 'assets', 'bookmarks', 'chrome_bookmarks.json'))
	data = JSON.parse(file)
	data.each do |bm|
		if bm["url"]
			new_bm	= Bookmark.new
			new_bm.cbm_id = bm["id"]
			new_bm.cbm_index = bm["index"]
  		new_bm.parent_id = bm["parentId"]
			new_bm.title = bm["title"]
			new_bm.url = bm["url"]
			new_bm.save
		else 
			newCategory = Category.new(name: bm["title"], cbm_id: bm["id"])
			newCategory.save
		end
	end
	Bookmark.all.each{|bm|bm.set_bookmark_category}
end

def self.tekmarks
	@tekmarks = {}
	@tekmarks['categories'] = Bookmark.all.where(parent_id: 311)
	@tekmarks['categories'].each do |category|
		parent = Bookmark.find_by(title: category.title)
		@tekmarks['bookmarks'] = Bookmark.all.each { |bm| bm.parent_id == category.id }
	end
	@tekmarks
end




# 	def self.bookmarks
# 		bookmarks = []
# 		file = File.open(Rails.root.join('app', 'assets', 'bookmarks', 'bookmarks.html'))
# 		parse = Nokogiri::HTML(file)
#     refs = parse.css('a').each do |item|
# 			ref = {
# 				title: item.text, 
# 				category: item.children.text,
# 				format: 'bookmark',
#         url: item.values.first,
# 				description: 'bookmark'
# 			}
# 			bookmarks.push(ref)
# 		end
#     Ref.import_bookmarks(bookmarks)
# 	end

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
 
	def self.aaq
		students = []
			site = HTTParty.get('https://learn.co/expert-chat')
			parse = Nokogiri::HTML(site)
			binding.pry
			parse.css('a').each do |item|
				students << item.child.text
			end
	end

	def self.books
		books = []
		Dir.chdir("/Users/brad/dev/books")
		folders = Dir.glob('*')
		folders.each do |folder|
			Dir.chdir("/Users/brad/dev/books" + "/" + "#{folder}")
			files = Dir.glob('*')
			files.each do |file|
				book = {}
				url  = "/Users/brad/dev/books" + "/" + "#{folder}" + "/" + "#{file}"
				book[:title] = file
				book[:category] = folder
				book[:description] = 'book description'
				book[:format] = 'pdf'
				book[:url] = url
				books.push(book)
			end
		end
		Ref.import_books(books)
	end
 

end
class Scrape < ApplicationRecord
require 'open-uri'
require 'pdf/reader'
  

	# every few weeks, export and replace the bookmarks.html file, (exported from Chrome)
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
	
	def self.books
		books = []
		Dir.chdir(Rails.root.join('app', 'assets', 'books'))
		folders = Dir.glob('*')
		puts folders
		folders.each do |folder|
			Dir.chdir(Rails.root.join('app', 'assets', 'books' + '/' + "#{folder}"))
			files = Dir.glob('*')
			files.each do |file|
				book = {}
 				book[:title] = file
				book[:category] = folder
				book[:description] = 'book description'
				book[:format] = 'pdf'
 				# book[:url] =  "#{Rails.root.join('app', 'assets', 'books', 'folder', '/', "#{file}")}"
 				book[:url] =  "https://github.com/smithWEBtek/books/blob/master/" + "#{folder}" + "/" + "#{file}"
				books.push(book)
			end
		end
		Ref.import_books(books)
	end
	 
	
	def self.gitbooks
		folders = []
		site = HTTParty.get('https://github.com/smithWEBtek/books')
		parse = Nokogiri::HTML(site)
		parse.css('span.css-truncate').each do |item|
			if item.children[0].content.match(/^\S+/) != nil
				matchedItem = item.children[0].content.match(/^\S+/).string
				folders.push(matchedItem)
				
			# binding.pry
			# puts item.children.text
			# puts item.children.css('a').text

    # refs = parse.css('a').each do |item|
		# 	ref = {
		# 		title: item.text, 
		# 		category: item.children.text,
		# 		format: 'bookmark',
    #     url: item.values.first,
		# 		description: 'bookmark'
		# 	}
		# 	bookmarks.push(ref)
			end
		end

		puts folders

		binding.pry
    # Ref.import_bookmarks(bookmarks)
	end
	
	def self.testpdf
		pdf = 'https://github.com/smithWEBtek/books/blob/master/algorithm/Algorithms.pdf'
		File.open(pdf, "rb") do |io|
			reader = PDF::Reader.new(io)	
			puts reader.pdf_version
			puts reader.info
			puts reader.metadata
			puts reader.page_count
		end
	end


  # def self.free_books
  #   @bookmarks = []
  #   page = HTTParty.get("https://github.com/vhf/free-programming-books/blob/master/free-programming-books.md#ruby")
  #   @parse = Nokogiri::HTML(page)

  # binding.pry

  #   refs = @parse.css('a').each do |item|
  #           ref = {
      #   "Language Agnostic" = @parse.css('h3')[4].text
      # <h3>  'group'
      #   <ol>
      #     <li>'book'
      #       <a href="url to the book">
      #     <li>'book'
      #       <a href="url to the book">
      #     <li>'book'
      #       <a href="url to the book">
      #     <li>'book'
      #       <a href="url to the book">
      #     <li>'book'
      #       <a href="url to the book">
      #     <li>'book'
      #       <a href="url to the book">
      #     <li>'book'
      #       <a href="url to the book">
      #   </ol>
      # <h3>  'group'

    #     name: item.text, 
    #     url: item.values.first
    #     author: @parse.css('ul li a')[188].text
    #     }
    #     @bookmarks.push(ref)
    #   end
    # Ref.import(@bookmarks)
    # end
 

end

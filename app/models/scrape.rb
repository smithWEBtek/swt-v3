class Scrape < ApplicationRecord
require 'open-uri'

	# every few weeks, export and replace the bookmarks.html file, (exported from Chrome)
	# until you find a way to reach out to Chrome programatically
	
  def self.bookmarks
		bookmarks = []
		file = File.open(Rails.root.join('lib', 'assets', 'bookmarks.html'))
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

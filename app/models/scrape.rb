class Scrape < ApplicationRecord

  def self.bookmarks
    @bookmarks = []
    page = HTTParty.get("https://swt-v3.herokuapp.com/bookmarks")
    @parse = Nokogiri::HTML(page)
    refs = @parse.css('a').each do |item|
            ref = {
        name: item.text, 
        url: item.values.first
        }
        @bookmarks.push(ref)
      end
    Ref.import(@bookmarks)
    end


  def self.free_books
    @bookmarks = []
    page = HTTParty.get("https://github.com/vhf/free-programming-books/blob/master/free-programming-books.md#ruby")
    @parse = Nokogiri::HTML(page)

  binding.pry

    refs = @parse.css('a').each do |item|
            ref = {


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

        name: item.text, 
        url: item.values.first
        author: @parse.css('ul li a')[188].text
        }
        @bookmarks.push(ref)
      end
    Ref.import(@bookmarks)
    end
 

end

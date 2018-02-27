class Ref < ApplicationRecord
  has_many :tags

  def self.import_bookmarks(bookmarks)
		bookmarks.each do |bookmark|
      ref = Ref.find_or_create_by(
				title: bookmark[:title],	
				category: bookmark[:category],	
				format: bookmark[:format],
				url: bookmark[:url],
				description: bookmark[:description]
			)
      ref.save
    end
  end

  def self.import_books(books)
		books.each do |book|
      ref = Ref.find_or_create_by(
				title: book[:title],	
				category: book[:category],	
				description: book[:description],
				format: book[:format],
				url: book[:url]
			)
      ref.save
    end
  end
end

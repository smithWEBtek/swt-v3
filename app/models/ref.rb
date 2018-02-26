class Ref < ApplicationRecord
  has_many :tags

  def self.import(bookmarks)
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
end

class Ref < ApplicationRecord
  has_many :tags

  def self.import(bookmarks)
    bookmarks.each do |bookmark|
      ref = Ref.find_or_create_by(name: bookmark[:name], url: bookmark[:url])
      ref.save
    end
  end
end

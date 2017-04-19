class Ref < ApplicationRecord
  has_many :ref_topics
  has_many :topics, through: :ref_topics
  has_many :post_refs
  has_many :posts, through: :post_refs


  def self.import(bookmarks)
    bookmarks.each do |bookmark|
      ref = Ref.find_or_create_by(name: bookmark[:name], url: bookmark[:url])
      ref.save
    end
  end
end

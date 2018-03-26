class CategorySerializer < ActiveModel::Serializer
	attributes :id, :name
	has_many :books
	has_many :bookmarks
	has_many :tags
	has_many :posts
	has_many :refs
end

class Tag < ApplicationRecord
	has_many :bookmarks
	has_many :posts
	has_many :projects
  has_many :refs
end

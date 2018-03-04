class Bookmark < ApplicationRecord
	has_many :tags
	
	def self.get_parents
		Bookmark.all.each do |bm|
			bm.parent = Bookmark.find(bm.parent_id)
			bm.save
		end
	end
end

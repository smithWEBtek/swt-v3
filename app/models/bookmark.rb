class Bookmark < ApplicationRecord
	has_many :tags
	
	def self.set_categories
		Bookmark.all.each do |bm|
			if Bookmark.find_by_cbm_id(bm.parent_id)
				category = Bookmark.find_by_cbm_id(bm.parent_id)
				bm.category = category.title
			else
				bm.category = "no parent id found"
			end
			bm.save
		end
	end

	def self.tekmarks
		@bookmarks = Bookmark.all.each do |b|
			# category is under tek
			# url exists

			
		end
	end
end

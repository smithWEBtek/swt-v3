class Bookmark < ApplicationRecord
	has_many :tags
	
	def self.set_categories
		Bookmark.all.each do |bm|
			if Bookmark.find_by_cbm_id(bm.parent_id)
				category = Bookmark.find_by_cbm_id(bm.parent_id)
				bm.category = category.title

				binding.pry

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

	def self.categories
		@categories = []
		Bookmark.all.each do |r|
			if !r.category.empty?
				@categories.push(r.category)
			end
		end
		@categories.uniq
	end
end

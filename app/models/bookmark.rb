class Bookmark < ApplicationRecord
	has_many :tags
	belongs_to :category
	
	def set_bookmark_category
		if Category.find_by_cbm_id(self.parent_id)
			category = Category.find_by_cbm_id(self.parent_id)
			self.category_id = category.id
			self.save
		end
	end

	def self.tekmarks
		@bookmarks = Bookmark.all.each do |b|
			# category is under tek
			# url exists
		end
	end

	# def self.categories
	# 	@categories = []
	# 	Bookmark.all.each do |r|
	# 		if !r.category.empty?
	# 			@categories.push(r.category)
	# 		end
	# 	end
	# 	@categories.uniq
	# end
end

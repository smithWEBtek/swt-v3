class CreateBookmarks < ActiveRecord::Migration[5.0]
	def change
		create_table :bookmarks do |t|
		t.integer 	:cbm_id 
		t.integer 	:cbm_index
		t.integer 	:parent_id 
		t.text 			:title
		t.text 			:url
		t.integer 	:category_id, default: 1
		end
	end
end
 
 
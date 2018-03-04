class CreateBookmarks < ActiveRecord::Migration[5.0]
	def change
		create_table :bookmarks do |t|
		t.integer 	:cbm_id
		t.datetime 	:dateAddedLocal 
		t.datetime 	:dateAddedUTC	 
		t.integer 	:cbm_index
		t.integer 	:parent_id 
		t.text 			:title
		t.text 			:category
		t.text 			:subcategory
		t.text 			:url

		t.timestamps
		end
	end
end
 
 
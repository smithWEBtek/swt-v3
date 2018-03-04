class CreateBookmarks < ActiveRecord::Migration[5.0]
	def change
		create_table :bookmarks do |t|
		t.integer 	:bm_id
		t.datetime 	:bm_dateAddedLocal 
		t.datetime 	:bm_dateAddedUTC	 
		t.integer 	:bm_index
		t.integer 	:bm_parentId 
		t.text 			:bm_title	 
		t.text 			:bm_url

		t.timestamps
		end
	end
end
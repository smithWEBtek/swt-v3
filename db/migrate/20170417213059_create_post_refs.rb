class CreatePostRefs < ActiveRecord::Migration[5.0]
  def change
    create_table :post_refs do |t|
      t.integer :post_id
      t.integer :ref_id
    end
  end
end

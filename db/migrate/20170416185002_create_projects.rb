class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.string :name
      t.text :business_model
      t.text :data_sources
      t.text :problem
      t.text :wishlist
      
      t.timestamps
    end
  end
end

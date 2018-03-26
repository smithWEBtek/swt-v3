class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
			t.text :name
			t.integer :cbm_id
    end
  end
end

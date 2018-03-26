class CreateRefs < ActiveRecord::Migration[5.0]
  def change
    create_table :refs do |t|
      t.string :title
      t.string :category
      t.text :description
      t.string :format
      t.string :url
    end
  end
end

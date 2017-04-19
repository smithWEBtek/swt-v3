class CreateRefs < ActiveRecord::Migration[5.0]
  def change
    create_table :refs do |t|
      t.string :name
      t.string :format
      t.string :url
      t.text :content

      t.timestamps
    end
  end
end

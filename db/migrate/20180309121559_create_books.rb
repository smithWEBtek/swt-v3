class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :category
      t.text :description
      t.string :format, default: 'pdf'
			t.string :url
			
      t.timestamps
    end
  end
end

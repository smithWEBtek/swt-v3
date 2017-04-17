class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.date :date
      t.string :title
      t.string :repo
      t.text :summary
      t.text :md_file

      t.timestamps
    end
  end
end

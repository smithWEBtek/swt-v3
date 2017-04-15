class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :repo
      t.date :date
      t.string :title
      t.text :outline
      t.text :body
      t.text :summary
      t.text :tweet
      t.text :refs

      t.timestamps
    end
  end
end

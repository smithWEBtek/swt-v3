class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.date :date
      t.string :title
      t.string :repo
      t.string :video_url
      t.text :summary, default: 'summary is blank'
      t.text :md_file, default: 'blank.md'

      t.timestamps
    end
  end
end

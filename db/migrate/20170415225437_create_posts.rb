class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.date :date
      t.string :title
      t.string :repo, default: 'repo blank'
      t.string :video_url
      t.text :summary, default: 'summary is blank'
      t.text :md_file, default: 'blank.md'
      t.text :body
      t.text :format, default: 'format blank'
      t.text :url, default: 'url blank'
      t.text :location, default: 'location blank'

      t.timestamps
    end
  end
end

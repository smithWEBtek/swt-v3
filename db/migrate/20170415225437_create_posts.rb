class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.date :date
      t.string :title
      t.string :repo, default: 'enter_full_URL_or_leave_blank'
      t.string :video_url
      t.string :site_url
      t.text :summary, default: 'summary_blank'
      t.text :md_file, default: 'blank_md'
 
      t.timestamps
    end
  end
end

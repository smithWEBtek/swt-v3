class CreateGroupTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :group_topics do |t|
      t.integer :group_id
      t.integer :topic_id
    end
  end
end

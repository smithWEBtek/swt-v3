class CreateRefTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :ref_topics do |t|
      t.integer :ref_id
      t.integer :topic_id
    end
  end
end

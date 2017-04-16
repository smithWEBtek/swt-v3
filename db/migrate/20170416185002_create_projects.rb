class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.string :title
      t.text :summary
      t.text :business_description
      t.text :current_solution
      t.text :data_sources
      t.string :data_sample1
      t.string :data_sample2
      t.string :data_sample3
      t.text :data_view1
      t.text :data_view2
      t.text :data_view3
      
      t.timestamps
    end
  end
end

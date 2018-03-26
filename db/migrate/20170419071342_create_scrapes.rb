class CreateScrapes < ActiveRecord::Migration[5.0]
  def change
    create_table :scrapes do |t|
      t.string :name
      t.string :url
      t.string :selectors
      t.text :notes
    end
  end
end

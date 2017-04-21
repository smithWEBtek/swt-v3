class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :company
      t.string :website
      t.string :about
      t.string :full_name
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.integer :role, default: 0

      t.timestamps
    end
  end
end

class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :name
      t.string :email
      t.string :level
      t.integer :price
      t.string :level_descrip

      t.timestamps
    end
  end
end

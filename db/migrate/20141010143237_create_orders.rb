class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :token
      t.string :transaction_id
      t.string :address_one
      t.string :address_two
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :status
      t.string :number
      t.string :uuid
      t.string :user_id
      t.decimal :price
      t.string :phone
      t.string :name

      t.timestamps
    end
  end
end

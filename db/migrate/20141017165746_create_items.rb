class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_name
      t.string :item_descrip
      t.integer :item_price
    end
  end
end

class CreateWhishLists < ActiveRecord::Migration[6.0]
  def change
    create_table :whish_lists do |t|
      t.integer :product_id
      t.integer :user_id

      t.timestamps
    end
  end
end

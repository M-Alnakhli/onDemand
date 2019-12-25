class CreateOwns < ActiveRecord::Migration[6.0]
  def change
    create_table :owns do |t|
      t.integer :tajir_id
      t.integer :product_id
      t.integer :amount

      t.timestamps
    end
  end
end

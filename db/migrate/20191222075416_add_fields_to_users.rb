class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string ,null: false,:minimum  => 6
    add_column :users, :first_name, :string,null: false
    add_column :users, :last_name, :string,null: false
    add_column :users, :age, :integer, default: 0,null: false
    add_column :users, :phone, :string, null: false ,:minimum  => 10
    add_column :users, :address, :string, default: 0,null: false ,:minimum  => 20
    
  end
end

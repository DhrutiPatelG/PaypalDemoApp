class AddNameAndAddressToOrders < ActiveRecord::Migration[6.0]
  def up
    add_column :orders, :name, :string
    add_column :orders, :address, :string
  end

  def down
    remove_column :orders, :name, :string
    remove_column :orders, :address, :string
  end
end

class AddColumnToOrders < ActiveRecord::Migration[8.0]
  def change
    add_column :orders, :completed, :boolean
    add_column :orders, :accepted, :boolean
    add_column :orders, :answer, :text
  end
end

class ChangeColumnsToNotNullableToOrders < ActiveRecord::Migration[5.1]
  def change
    change_column_null :orders, :name, false
    change_column_null :orders, :phone, false
    change_column_null :orders, :address, false
    change_column_null :orders, :city, false
    change_column_null :orders, :state, false
    change_column_null :orders, :country, false
    change_column_null :orders, :zipcode, false
    change_column_null :orders, :consumer_id, false
  end
end

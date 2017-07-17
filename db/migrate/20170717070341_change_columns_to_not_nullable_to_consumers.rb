class ChangeColumnsToNotNullableToConsumers < ActiveRecord::Migration[5.1]
  def change
    change_column_null :consumers, :first_name, false
    change_column_null :consumers, :last_name, false
    change_column_null :consumers, :phone, false
    change_column_null :consumers, :email, false
    change_column_null :consumers, :password, false
    change_column_null :consumers, :address, false
    change_column_null :consumers, :city, false
    change_column_null :consumers, :state, false
    change_column_null :consumers, :country, false
    change_column_null :consumers, :zip_code, false
  end
end

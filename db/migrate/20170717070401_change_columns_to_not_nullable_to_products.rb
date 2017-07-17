class ChangeColumnsToNotNullableToProducts < ActiveRecord::Migration[5.1]
  def change
    change_column_null :products, :name, false
    change_column_null :products, :description, false
    change_column_null :products, :price, false
    change_column_null :products, :category_id, false
  end
end

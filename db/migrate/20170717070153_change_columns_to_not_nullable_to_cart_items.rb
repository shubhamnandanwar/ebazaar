class ChangeColumnsToNotNullableToCartItems < ActiveRecord::Migration[5.1]
  def change
    change_column_null :cart_items, :quantity, false
    change_column_null :cart_items, :price, false
    change_column_null :cart_items, :cart_id, false
    change_column_null :cart_items, :product_id, false
  end
end

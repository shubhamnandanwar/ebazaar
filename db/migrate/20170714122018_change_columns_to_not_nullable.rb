class ChangeColumnsToNotNullable < ActiveRecord::Migration[5.1]
  def change
  	change_column_null :cart_items, :quantity ,false
  	change_column_null :cart_items, :price ,false
  	change_column_null :cart_items, :cart_id ,false
  	change_column_null :cart_items, :product_id ,false

  	change_column_null :carts, :consumer_id ,false

  	change_column_null :categories, :name ,false

  	change_column_null :consumers, :first_name ,false
  	change_column_null :consumers, :last_name ,false
  	change_column_null :consumers, :phone ,false
  	change_column_null :consumers, :email ,false
  	change_column_null :consumers, :password ,false
  	change_column_null :consumers, :address,false
  	change_column_null :consumers, :city ,false
  	change_column_null :consumers, :state ,false
  	change_column_null :consumers, :country ,false
  	change_column_null :consumers, :zip_code ,false

  	change_column_null :order_items, :quantity ,false
  	change_column_null :order_items, :price ,false
  	change_column_null :order_items, :order_id ,false
  	change_column_null :order_items, :product_id ,false

  	change_column_null :orders, :name ,false
  	change_column_null :orders, :phone ,false
  	change_column_null :orders, :address,false
  	change_column_null :orders, :city ,false
  	change_column_null :orders, :state ,false
  	change_column_null :orders, :country ,false
  	change_column_null :orders, :zipcode ,false
  	change_column_null :orders, :consumer_id ,false

  	change_column_null :products, :name ,false
  	change_column_null :products, :description ,false
  	change_column_null :products, :price ,false
  	change_column_null :products, :category_id ,false

  end
end

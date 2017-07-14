class AddCustomerRefToOrder < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :consumer, foreign_key: true
  end
end

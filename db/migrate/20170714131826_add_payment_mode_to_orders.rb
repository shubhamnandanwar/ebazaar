class AddPaymentModeToOrders < ActiveRecord::Migration[5.1]
  def change
  	add_column :orders, :payment_mode, "enum('Credit/Debit Card','Net Banking','Cash on delivery')"
  end
end

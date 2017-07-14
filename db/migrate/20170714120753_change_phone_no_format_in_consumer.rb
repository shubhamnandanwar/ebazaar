class ChangePhoneNoFormatInConsumer < ActiveRecord::Migration[5.1]
  def up
    change_column :orders, :phone, :bigint
  end

  def down
    change_column :orders, :phone, :integer
  end
end

class ChangeColumnsToNotNullableToCarts < ActiveRecord::Migration[5.1]
  def change
    change_column_null :carts, :consumer_id, false
  end
end

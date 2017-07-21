class RemovePasswordFromConsumer < ActiveRecord::Migration[5.1]
  def change
  	remove_column :consumers, :password, :string
  end
end

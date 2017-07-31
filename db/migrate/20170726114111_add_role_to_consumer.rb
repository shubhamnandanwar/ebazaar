class AddRoleToConsumer < ActiveRecord::Migration[5.1]
  def change
  	add_column :consumers, :role, :integer
  end
end

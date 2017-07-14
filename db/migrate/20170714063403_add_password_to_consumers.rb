class AddPasswordToConsumers < ActiveRecord::Migration[5.1]
  def change
    add_column :consumers, :password, :string
  end
end

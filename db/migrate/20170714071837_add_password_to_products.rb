class AddPasswordToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :password, :string
  end
end

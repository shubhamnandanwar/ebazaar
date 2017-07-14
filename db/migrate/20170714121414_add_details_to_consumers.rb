class AddDetailsToConsumers < ActiveRecord::Migration[5.1]
  def change
  	add_column :consumers, :phone, :bigint
  	add_column :consumers, :email, :string
  	add_column :consumers, :password, :string
  	add_column :consumers, :address, :string
  	add_column :consumers, :city, :string
  	add_column :consumers, :state, :string
  	add_column :consumers, :country, :string
  	add_column :consumers, :zip_code, :integer
  	
  end
end

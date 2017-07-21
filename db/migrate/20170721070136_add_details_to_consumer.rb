class AddDetailsToConsumer < ActiveRecord::Migration[5.1]
  def change
  	add_column :consumers, :password_digest, :string
  	add_column :consumers, :password_salt, :string
  end
end

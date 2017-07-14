class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.references :consumer, foreign_key: true

      t.timestamps
    end
  end
end

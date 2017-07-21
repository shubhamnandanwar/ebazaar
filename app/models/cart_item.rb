class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :product
  validates :price, :numericality => { :greater_than_or_equal_to => 0 }

  validates_presence_of :quantity, :price, :product_id, :cart_id
end

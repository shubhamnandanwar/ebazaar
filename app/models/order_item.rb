class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product
  validates :price, :numericality => { :greater_than_or_equal_to => 0 }

  validates_presence_of :quantity, :price, :order_id, :product_id
end

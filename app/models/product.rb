class Product < ApplicationRecord
  belongs_to :category
  has_many :cart_items
  has_many :order_items
  validates :price, :numericality => { :greater_than_or_equal_to => 0 }

  validates_presence_of :name, :price, :description, :category_id
end

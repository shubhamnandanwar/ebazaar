class Product < ApplicationRecord
  belongs_to :category
  validates :price, :numericality => { :greater_than_or_equal_to => 0 }
end

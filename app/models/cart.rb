class Cart < ApplicationRecord
  belongs_to :consumer
  has_many :cart_items

  validates_presence_of :consumer
end

class Cart < ApplicationRecord
  belongs_to :consumer
  has_many :cart_items, dependent: :destroy

  validates_presence_of :consumer
end

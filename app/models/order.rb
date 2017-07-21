class Order < ApplicationRecord
  belongs_to :consumer
  has_many :order_items

  validates_presence_of :name, :phone, :address, :city, :state, :country, :zipcode, :consumer_id
end

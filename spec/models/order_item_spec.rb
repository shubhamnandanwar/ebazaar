require 'rails_helper'

RSpec.describe OrderItem, :type => :model do
  
  let(:consumer) { Consumer.create(first_name: "Shubham", last_name: "Sharma", phone: 9876543210,
    email: "shubh@gmail.com", password: "abc123456", address: "ujjain", city: "ujjain", state: "mp",
    country: "india", zip_code: 456010)}

  let(:category) { Category.create(name: "Kitchen Utility")}

  let(:order) { Order.create(name: "Shubham Sharma", phone: 9056478945, address: "Ujjain",
    city: "Ujjain", state: "mp", country: "india", zipcode: 456010, consumer_id: consumer.id)}
  
  let(:product) { Product.create(name: "Milton", price: 45, description: "water bottle",
    category_id: category.id)}

  subject { OrderItem.new(order_id: order.id, product_id: product.id)}

  it { should belong_to :order }
  it { should belong_to :product }

  it "should not have negative price" do
    subject.price = -10
    expect(subject).to_not be_valid
  end

  it "should have positive price" do
    subject.price = 10
    expect(subject).to be_valid
  end

end
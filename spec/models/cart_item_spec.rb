require 'rails_helper'

RSpec.describe CartItem, :type => :model do

  let(:consumer) { Consumer.create(first_name: "Shubham", last_name: "Sharma", phone: 9876543210,
    email: "shubh@gmail.com", password: "abc123456", address: "ujjain", city: "ujjain", state: "mp",
    country: "india", zip_code: 456010)}

  let(:category) { Category.create(name: "Utility")}
  
  let(:product) { Product.create(name: "Milton", price: 45, description: "water bottle",
    category_id: category.id)}

  let(:cart) { Cart.create(consumer_id: consumer.id)}

  subject { CartItem.new(cart_id: cart.id, product_id: product.id)}

  it { should belong_to :cart }
  it { should belong_to :product }

  it "should not have negative price" do
    subject.price = -10
    expect(subject).to_not be_valid
  end

  it "should have valid price" do
    subject.price = 10
    expect(subject).to be_valid
  end

end
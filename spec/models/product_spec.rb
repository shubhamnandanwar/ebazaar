require 'rails_helper'

RSpec.describe Product, :type => :model do

  let(:category) { Category.create(name: "Kitchen Utility")}

  subject { Product.new(category_id: category.id ) }

  it { should belong_to :category }
  it { should have_many :cart_items }
  it { should have_many :order_items }

  it "should not have negative price" do
    subject.price = -10
    expect(subject).to_not be_valid
  end

  it "should have positive price" do
    subject.price = 10
    expect(subject).to be_valid
  end

end
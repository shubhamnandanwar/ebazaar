# spec/consumer_spec.rb
require 'rails_helper'

RSpec.describe Consumer, :type => :model do

  subject { Consumer.new }

  it "should have valid attributes" do
    subject.email = "shubh@gmail.com"
    subject.password = "aa34444343"
    expect(subject).to be_valid
  end

  it "should have an atmark in email" do
    subject.email = "shubham.com"
    expect(subject).to_not be_valid
  end

  it "should have a top level domain in email" do
    subject.email = "shubham@gmail"
    expect(subject).to_not be_valid
  end

  it "should have an atmark and top level domain in email" do
    subject.email = "shubham"
    expect(subject).to_not be_valid
  end

  it "should not have null email" do
    subject.email = ""
    expect(subject).to_not be_valid
  end

  it "should not have null password" do
    subject.password = ""
    expect(subject).to_not be_valid
  end

  it "should not have password with length less than 8" do
    subject.password = "ab45"
    expect(subject).to_not be_valid
  end

  it "should contain numbers" do
    subject.password = "abvdfdadf"
    expect(subject).to_not be_valid
  end

  it "should contain characters" do
    subject.email = "123456789"
    expect(subject).to_not be_valid
  end

  it { should have_one :cart }
  it { should have_many :orders }
  
end
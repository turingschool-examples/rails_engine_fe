require 'rails_helper'


RSpec.describe "Merchant" do 
  it "has an id and name" do 
    merchant = Merchant.new(id: 1, name: "Cheese")
    expect(merchant).to be_an_instance_of Merchant
    expect(merchant.name).to eq("Cheese")
    expect(merchant.id).to eq(1)
  end 
end 
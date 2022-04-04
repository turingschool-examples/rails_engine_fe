require 'rails_helper'


RSpec.describe "Item" do 
  it "has an id and name" do 
    item = Item.new(id: 1, name: "Cheese")
    expect(item).to be_an_instance_of Item
    expect(item.name).to eq("Cheese")
    expect(item.id).to eq(1)
  end 
end 
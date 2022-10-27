require "rails_helper"


RSpec.describe ItemFacade do
  it "can return a list of items per merchant" do
    item = ItemFacade.merchant_items(1)
  
    expect(item).to be_a(Array)
   expect(item[1].name).to eq("Item Expedita Aliquam")
  end
end
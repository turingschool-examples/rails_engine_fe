require "rails_helper"


RSpec.describe ItemService do
  it "can return a list of items per merchant" do
   items = ItemService.all_items(1)

   expect(items).to be_a(Array)
   expect(items[1][:attributes]).to have_key(:name)
  end
end
require 'rails_helper'

RSpec.describe Item do 
  it 'has attributes', :vcr do 
    item_data = ItemService.get_single_item(10)[:data]
    item = Item.new(item_data)

    expect(item.item_name).to eq("Item Quidem Suscipit")
    expect(item.item_id).to eq("10")
    expect(item.item_description).to eq("Reiciendis sed aperiam culpa animi laudantium. Eligendi veritatis sint dolorem asperiores. Earum alias illum eos non rerum.")
    expect(item.item_price).to eq(340.18)
  end 
end 
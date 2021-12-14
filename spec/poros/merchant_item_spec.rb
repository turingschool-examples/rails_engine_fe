require 'rails_helper'

RSpec.describe MerchantItem do 
  it 'has attributes', :vcr do 
    merchant_data = MerchantService.get_merchant_name(1)[:data]
    item_data = ItemService.get_single_item(10)[:data]
    merchant_item = MerchantItem.new(merchant_data,item_data)

    expect(merchant_item.merchant_name).to eq("Schroeder-Jerde")
    expect(merchant_item.merchant_id).to eq("1")
    expect(merchant_item.item_name).to eq("Item Quidem Suscipit")
    expect(merchant_item.item_id).to eq("10")
    expect(merchant_item.item_description).to eq("Reiciendis sed aperiam culpa animi laudantium. Eligendi veritatis sint dolorem asperiores. Earum alias illum eos non rerum.")
    expect(merchant_item.item_price).to eq(340.18)
  end 
end 
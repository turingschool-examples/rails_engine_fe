require 'rails_helper'

RSpec.describe MerchantItemsFacade do
  it 'constructs item objects for a merchant' do
    merchant_id = 1
    items = MerchantItemsFacade.find_all(1)
    expect(items.first).to be_an Item
    expect(items.first.name).to eq("Item Nemo Facere")
    expect(items.second.unit_price).to eq(687.23)

  end


  # it 'finds a merchant object by an id' do
  #   merchant = MerchantsFacade.find_one(1)
  #   expect(merchant.name).to eq("Schroeder-Jerde")
  # end
end

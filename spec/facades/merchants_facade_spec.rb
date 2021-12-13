require 'rails_helper'

RSpec.describe MerchantsFacade do
  it 'constructs merchant objects', :vcr do
    merchants = MerchantsFacade.find_all
    expect(merchants.first).to be_a Merchant
    expect(merchants.first.name).to eq("Schroeder-Jerde")
  end

  it 'finds a merchant object by an id', :vcr do
    merchant = MerchantsFacade.find_one(1)
    expect(merchant.name).to eq("Schroeder-Jerde")
  end
end

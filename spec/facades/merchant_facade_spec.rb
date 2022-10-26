require 'rails_helper'

RSpec.describe MerchantFacade do
  it 'can retrive data for all merchants', vcr: { record: :new_episodes } do
    merchants_data = MerchantFacade.all_merchants

    expect(merchants_data).to be_an(Array)
    expect(merchants_data[0]).to be_a(Merchant)
  end

  it 'can retrive data for a specific merchant', vcr: { record: :new_episodes } do
    merchants_data = MerchantFacade.one_merchant(3)

    expect(merchants_data).to be_a(Merchant)
  end

  it 'can retrive all item data for a specific merchant', vcr: { record: :new_episodes } do
    merchants_data = MerchantFacade.merchant_items(3)

    expect(merchants_data).to be_an(Array)
    expect(merchants_data[0]).to be_a(Item)
  end
end
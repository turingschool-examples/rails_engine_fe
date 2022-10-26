require 'rails_helper'

RSpec.describe MerchantFacade do
  it 'can retrive data for all merchants', vcr: { record: :new_episodes } do
    merchants_data = MerchantFacade.all_merchants

    expect(merchants_data).to be_an(Array)
    expect(merchants_data[0]).to be_a(Merchant)
  end
end
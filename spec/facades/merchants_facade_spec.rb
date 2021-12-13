require 'rails_helper'

RSpec.describe 'Merchants Facade', :vcr do
  it 'gets all merchants' do
    response = MerchantsFacade.all_merchants

    expect(response.first).to be_a(Merchant)
  end

  xit 'gets one merchant' do
    # response = MerchantsFacade.merchant_by_id(merchant.id)
    #
    # expect(response.first.name).to eq(merchant.name)
    # expect(response.first).to be_a(Merchant)
  end
end

require 'rails_helper'
# ber spec/facades/merchants_facade_spec.rb

RSpec.describe 'Merchants Facade', :vcr do
  it 'gets all merchants' do
    response = MerchantsFacade.all_merchants

    expect(response.first).to be_a(Merchant)
    require "pry"; binding.pry
  end

  it 'gets one merchant' do
    # response = MerchantsFacade.merchant_by_id(merchant.id)
    # # response = MerchantService.get_data("merchants/#{merchant.id}")
    #
    # expect(response.first).to be_a(Merchant)
    # expect(response.first.name).to eq(merchant.name)
    #
    # response[:data].each do |merchant|
    #   expect(merchant).to have_key(:id)
    #   expect(merchant).to have_key(:type)
    #   expect(merchant).to have_key(:attributes)
    #   expect(merchant[:attributes]).to have_key(:name)
    # end
  end
end

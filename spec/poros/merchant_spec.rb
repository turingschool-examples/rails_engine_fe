require 'rails_helper'

RSpec.describe Merchant do
  it 'exists and has attributes' do
    merchants_data = MerchantFacade.merchant_data

    merchants_data.map do |merchant|
      expect(merchant.name).to be_a(String)
      expect(merchant.id).to be_a(String)
    end
    
    expect(merchants_data[0]).to be_a(Merchant)
    expect(merchants_data[0].id).to eq("1")
    expect(merchants_data[0].name).to eq("Schroeder-Jerde")
  end
end
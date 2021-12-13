require 'rails_helper'

RSpec.describe 'Merchant Service' do
  it 'can get all merchants' do
    merchants = MerchantService.all_merchants[:data]
    first_merchant = merchants.first

    expect(first_merchant).to have_key(:id)
    expect(first_merchant[:id]).to eq("1")
    expect(first_merchant).to have_key(:attributes)
    expect(first_merchant[:attributes][:name]).to be_a(String)
    expect(merchants).to be_a(Array)
    expect(merchants.count).to eq(100)
  end
end

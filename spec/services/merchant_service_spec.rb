require 'rails_helper'

RSpec.describe MerchantService do

  it 'returns all merchants' do
    search = MerchantService.get_all_merchants
    expect(search).to be_a Hash
    expect(search[:data]).to be_a Array
  end

  it 'returns a merchant' do
    merchant = Merchant.create!(name: 'Dunder Miflin')
    search = MerchantService.get_merchant(merchant.id)
    expect(search).to be_a Hash
    expect(search[:data]).to be_a Hash
  end

end

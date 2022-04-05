require 'rails_helper'

RSpec.describe "Merchant Service" do
  it 'returns all merchants' do
    results = MerchantService.get_all_merchants
    expect(results).to be_a(Hash)
  end

  it 'can return a single merchant' do
    one_merchant = MerchantService.find_a_merchant(1)
    expect(one_merchant).to be_a(Hash)
  end
end
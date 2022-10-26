require 'rails_helper'

RSpec.describe Merchant do
  it 'exists and displays attributes correctly' do
    raw_merchant_data = MerchantService.request_one_merchant(3)
    merchant_data = raw_merchant_data[:data]
    merchant = Merchant.new(merchant_data)

    expect(merchant).to be_instance_of(Merchant)
    expect(merchant.id.to_i).to eq(3)
    expect(merchant.name).to eq("Willms and Sons")
  end
end
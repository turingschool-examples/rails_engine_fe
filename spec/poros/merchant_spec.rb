require 'rails_helper'

RSpec.describe Merchant do 
  it 'has attributes', :vcr do 
    merchant_data = MerchantService.get_merchant_name(1)[:data]
    merchant = Merchant.new(merchant_data)

    expect(merchant.merchant_name).to eq("Schroeder-Jerde")
    expect(merchant.merchant_id).to eq("1")
  end 
end 
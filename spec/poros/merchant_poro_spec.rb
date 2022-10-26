require 'rails_helper'

RSpec.describe Merhcant do
  it 'exists and displays attributes correctly' do
    merchant_data = MerchantService.request_one_merchant(3)
    merchant = Merchant.new(merchant_data)
  end
end
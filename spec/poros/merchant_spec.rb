require 'rails_helper'

RSpec.describe Merchant do
  it 'has attributes' do
    merchant = Merchant.new(merchant_data_for_test[:data][0])
    expect(merchant.name).to eq("Schroeder-Jerde")
    expect(merchant.merchant_id).to eq("1")
  end
end

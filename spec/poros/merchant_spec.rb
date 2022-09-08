require 'rails_helper'

RSpec.describe Merchant do
  it 'exists and has attributes' do
    response = JSON.parse(File.read('spec/fixtures/merchants_response.json'), symbolize_names: true)[:data][0]
    merchant = Merchant.new(response)

    expect(merchant).to be_a(Merchant)
    expect(merchant.name).to eq('Schroeder-Jerde')
  end
end
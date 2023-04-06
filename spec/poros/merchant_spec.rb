require 'rails_helper'

RSpec.describe Merchant do
  before :each do 
    merchants = JSON.parse(file_fixture("merchants_response.json").read, symbolize_names: true)
    merchant_data = merchants[:data].first
    
    @merchant = Merchant.new(merchant_data)
  end

  it 'exists and has attributes' do
    expect(@merchant).to be_instance_of(Merchant)
    expect(@merchant.id).to eq(1)
    expect(@merchant.name).to eq("Schroeder-Jerde")
  end
end
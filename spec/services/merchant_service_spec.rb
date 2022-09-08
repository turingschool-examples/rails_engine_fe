require 'rails_helper'

RSpec.describe MerchantService do 
  it "gets data for all merchants", :vcr do 
    merchants = MerchantService.get_all_merchants
    # require 'pry'; binding.pry 
    expect(merchants).to be_a(Array)
    expect(merchants[0]).to be_a(Hash)
    expect(merchants[0]).to have_key(:attributes)
    expect(merchants[0][:attributes]).to have_key(:name)
  end

  it "gets data for one specific merchant", :vcr do 
    merchant = MerchantService.get_merchant(1)
    # require 'pry'; binding.pry 
    expect(merchant).to be_a(Hash)
    expect(merchant).to have_key(:attributes)
    expect(merchant[:attributes][:name]).to eq("Schroeder-Jerde")
  end
end
require 'rails_helper'

RSpec.describe MerchantService do 
  it "gets data for all merchants", :vcr do 
    merchants = MerchantService.get_all_merchants
    # require 'pry'; binding.pry 
    expect(merchants).to be_a(Array)
    expect(merchants[0]).to be_a(Hash)
    expect(merchants[0]).to have_key(:attributes)
    expect(merchants[0][:attributes]).to have_key(:name)
    expect(merchants[0][:attributes][:name]).to eq("Schroeder-Jerde")
  end
end
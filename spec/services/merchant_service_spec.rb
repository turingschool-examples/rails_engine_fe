require 'rails_helper'

RSpec.describe MerchantService do 
  it "gets data for all merchants", :vcr do 
    merchants = MerchantService.get_all_merchants

    expect(merchants[0]).to be_a(Hash)
  end
end
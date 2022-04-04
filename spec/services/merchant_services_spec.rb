require 'rails_helper'

RSpec.describe MerchantService do
  # let(:movie_deets) { MovieService.movie_deets(5244) }
  # let(:casts) { MovieService.cast(5244) }
  # let(:reviews) { MovieService.reviews(5244) }
  
  
  it "can call for merchants" do 
    response = MerchantService.call_for_merchants
    expect(response).to be_a(Hash)
    expect(response.count). to eq(1)
  end 

  it "can call for a merchant" do 
    merchant_id = 1
    response = MerchantService.call_for_a_merchant(merchant_id)
    expect(response).to be_a(Hash)
    expect(response.count). to eq(1)
  end 

  it "can call for items" do 
    merchant_id = 1
    response = MerchantService.call_for_a_merchant(merchant_id)
    expect(response).to be_a(Hash)
    expect(response.count). to eq(1)
  end 
end

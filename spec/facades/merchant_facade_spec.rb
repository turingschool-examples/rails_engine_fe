require 'rails_helper'

RSpec.describe "the merchant facade" do

  it "gets the info for all merchants and turns it into objects", :vcr do
    expect(MerchantFacade.merchants).to be_an(Array)
    MerchantFacade.merchants.each do |merchant|
      expect(merchant).to be_a(Merchant)
    end 
  end
end
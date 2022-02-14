require 'rails_helper'

RSpec.describe MerchantFacade do
 it ".merchants" do
   VCR.use_cassette('test') do
     merchants = MerchantFacade.merchants_info

     expect(merchants).to be_a Array
     merchant = merchants.first
     expect(merchant).to be_a Merchant
   end

 end

 it ".items" do
   VCR.use_cassette('test2') do
     items = MerchantFacade.merchant_items(1)

     expect(items).to be_a Array
     item = items.first
     expect(item).to be_a Item
   end

 end
end

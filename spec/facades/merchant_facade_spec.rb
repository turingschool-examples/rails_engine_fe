require 'rails_helper'

RSpec.describe MerchantFacade do
 it ".merchants_info" do
   VCR.use_cassette('test') do
     merchants = MerchantFacade.merchants_info

     expect(merchants).to be_a(Array)
     merchant = merchants.first
     expect(merchant).to be_a(MerchantPoro)
   end
 end

 it '.item_info' do
   VCR.use_cassette('test_1') do
     items = MerchantFacade.item_info(1)

     expect(items).to be_a(Array)
     item = items.first
     expect(item).to be_a(ItemPoro)
   end
 end
end

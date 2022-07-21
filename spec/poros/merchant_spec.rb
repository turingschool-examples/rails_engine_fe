require 'rails_helper'

RSpec.describe Merchant do 
 let!(:merchant_1) {MerchantFacade.merchant_info.first} 

 it 'has attributes' do 
  expect(merchant_1.id).to eq(1)
  expect(merchant_1.name).to eq("Schroeder-Jerde")
 end
end
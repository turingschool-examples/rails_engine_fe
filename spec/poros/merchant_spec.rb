require 'rails_helper'

RSpec.describe 'Merchant' do
 describe 'it exists' do
  it 'and it has attributes' do
   merchant = MerchantService

   expect(merchant).to be_a Merchant
   expect(merchant.name).to be_a String
  end
 end
end
require 'rails_helper'

RSpec.describe 'Merchant Facade' do
  it 'creates merchant poros' do
    merchants = MerchantFacade.all_merchants
    
    expect(merchants).to be_an(Array)

    merchants.each do |merchant|
      expect(merchant).to be_an_instance_of(Merchant)
    end
  end
end

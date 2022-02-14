require 'rails_helper'

RSpec.describe MerchantFacade do
  describe '::all_merchants' do
    it 'returns a list of all merchants in the database' do
      merchants = MerchantFacade.all_merchants

      expect(merchants).to be_a Array
      merchants.each do |merchant|
        expect(merchant).to be_a MerchantAPI
      end 
    end
  end
end

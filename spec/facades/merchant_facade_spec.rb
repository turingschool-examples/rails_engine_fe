require 'rails_helper'

RSpec.describe MerchantFacade do
  describe 'merchant calls' do
    it 'all_merchants' do
      merchants = MerchantFacade.all_merchants

      expect(merchants).to be_a(Array)

      merchants.each do |merchant|
        expect(merchant).to be_instance_of(Merchant)
      end
      expect(merchants[0].name).to eq("Schroeder-Jerde")
    end
  end
end
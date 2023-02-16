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
      expect(merchants[1].name).to eq("Klein, Rempel and Jones")
    end

    it 'one_merchant' do
      merchant = MerchantFacade.one_merchant(42)

      expect(merchant).to be_instance_of(Merchant)
      expect(merchant.id).to eq("42")
      expect(merchant.name).to eq("Glover Inc")
    end
  end
end
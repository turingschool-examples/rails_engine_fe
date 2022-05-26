RSpec.describe MerchantFacade do
  describe '::all_merchants' do
    it 'returns a list of all merchants in the database' do
      merchants = MerchantFacade.all_merchants

      expect(merchants).to be_a Array
      merchants.each do |merchant|
        expect(merchant).to be_a Merchant
        expect(merchant.id).to be_a Integer
        expect(merchant.name).to be_a String
      end
    end
  end
end

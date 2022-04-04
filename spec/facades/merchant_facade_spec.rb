require 'rails_helper'
RSpec.describe MerchantFacade do
  describe 'class methods' do
    it 'will return all merchants' do
      merchant_objects = MerchantFacade.all_merchants
      merchant_objects.each do |object|
        expect(object).to be_a Merchant
        expect(object.name).to_not be_nil
      end
    end
  end
end

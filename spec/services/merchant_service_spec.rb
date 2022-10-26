require 'rails_helper'

RSpec.describe MerchantService do
  describe 'class methods' do
    it 'returns a list/data about all merchants' do
      all_merchant_data = MerchantService.request_all_merchants

      expect(all_merchant_data).to be_a(Hash)
    end

    it 'returns info about a single merchant' do

    end
  end
end
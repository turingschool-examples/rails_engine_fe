require 'rails_helper'
RSpec.describe MerchantService do
  context 'class methods' do
    it 'returns a list of all Merchants' do
      search = MerchantService.get_all_merchants
      expect(search).to be_a Hash
      expect(search[:data]).to be_an Array
    end
  end
end

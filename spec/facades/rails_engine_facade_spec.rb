require 'rails_helper'

RSpec.describe RailsEngineFacade do
  describe 'merchant_list' do
    it 'returns merchant object array' do
      merchants = RailsEngineFacade.merchant_list

      expect(merchants).to be_an(Array)
      expect(merchants.first).to be_instance_of(Merchant)
    end
  end
end

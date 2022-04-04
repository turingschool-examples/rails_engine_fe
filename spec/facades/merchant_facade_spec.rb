require 'rails_helper'

RSpec.describe MerchantFacade do

  context 'class methods' do
    context '#all_merchants' do 
      before(:each) do 
        @all_merchants = MerchantFacade.all_merchants
      end
      it 'returns an array of all merchants' do 
        expect(@all_merchants).to be_an Array
      end

      it 'creates merchant objects' do 
        expect(@all_merchants.first).to be_a Merchant
      end
    end

   
  end
end 
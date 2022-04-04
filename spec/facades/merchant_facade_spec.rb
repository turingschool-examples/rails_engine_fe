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

    context '#merchant_info(id)' do 
      it 'creates a single merchant object' do 
        merchant = MerchantFacade.merchant_info(5)
        
        expect(merchant).to be_a Merchant
      end 
      
      it 'merchant has all attributes' do 
        merchant = MerchantFacade.merchant_info(5)
        
        expect(merchant.id).to be_a String
        expect(merchant.id.nil?).to be false
                
        expect(merchant.name).to be_a String
        expect(merchant.name.nil?).to be false
      end
    end
    
  end
end 
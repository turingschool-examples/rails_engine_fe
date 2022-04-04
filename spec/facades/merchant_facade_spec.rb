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
    
    context '#merchant_items(merchant_id)' do 
      it 'creates Item objects for all merchant_items' do
        merchant = MerchantFacade.merchant_info(5)
        items = MerchantFacade.merchant_items(5)
        first_item = items.first
        expect(merchant).to be_a Merchant

        expect(first_item.merchant_id.to_s).to eq(merchant.id)

        expect(first_item.id).to be_a String
        expect(first_item.name).to be_a String        
        expect(first_item.description).to be_a String        
        expect(first_item.unit_price).to be_a Float
      end
    end
  end
end 
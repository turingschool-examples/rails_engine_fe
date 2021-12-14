require 'rails_helper' 

RSpec.describe 'Item Facade' do 
  describe '.get_items' do 
    it 'returns an array of item poros', :vcr do 
      items = ItemFacade.get_items 

      expect(items).to be_an(Array)
    end 
  end 

  describe '.get_item' do 
    it 'returns a MerchantItem poro', :vcr do 
      merchant_item = ItemFacade.get_item(10)

      expect(merchant_item).to be_a(MerchantItem)
    end 
  end 
end 
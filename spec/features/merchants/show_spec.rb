require 'rails_helper'

RSpec.describe 'Merchants Show Page' do
  before :each do
    @merchant = MerchantFacade.all_merchants.first
    visit "/merchants/#{@merchant.id}"
  end

  describe 'when I visit the Merchants Show Page' do
    it 'displays the merchants name' do
      expect(page).to have_content("#{@merchant.name}")
    end
    
    it 'displays a list of all that merchants items' do
      expect(page.status_code).to eq 200

      expect("Item Nemo Facere").to appear_before("Item Expedita Aliquam")
      expect("Item Expedita Aliquam").to appear_before("Item Provident At")
      expect("Item Provident At").to appear_before("Item Expedita Fuga")
    end
  end
end

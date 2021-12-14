require 'rails_helper'

RSpec.describe 'Merchants show',type: :feature do
  before :each do
    @merchant = MerchantFacade.merchant(1)
    @items = MerchantFacade.items(1)
  end
  it "can show a merchant's items" do
    visit merchant_path(@merchant.id)
    @items.each do |item|
      expect(page).to have_content(item.name)
      expect(page).to have_content(item.description)
      expect(page).to have_content(item.unit_price)
    end
    
  end
end
require 'rails_helper'

RSpec.describe 'Merchant Show Page' do
  it 'has list of all items for merchant' do 
    first_merchant = MerchantFacade.all_merchants.first
    items = MerchantFacade.merchant_items(first_merchant.id)

    visit merchant_path(first_merchant.id)    

    expect(page).to have_css("#items")
    
    within("#items") do
      expect(page).to have_css("#name, items.count")
    end
  end
  
  xit 'each item name is a link to item show page' do 
  end
end
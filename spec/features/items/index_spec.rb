require 'rails_helper'

RSpec.describe 'Item Index Page' do
  it 'has list of all items' do 
    visit items_path
    items = ItemFacade.all_items
    
    expect(page).to have_css("#items")
    
    within("#items") do
      expect(page).to have_css("#name, items.count")
    end
  end
  
  xit 'each merchant name is a link to merchant show page' do 
    visit items_path
    first_merchant = ItemFacade.all_items.first

    within(first("#name")) do 
      click_link
    end

    expect(current_path).to eq(merchant_path(first_merchant.id))
  end
end
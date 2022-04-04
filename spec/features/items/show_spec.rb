require 'rails_helper'

RSpec.describe 'Item Show Page' do
  it 'has name, description, and unit price for item' do 
    first_item = ItemFacade.all_items.first 

    visit item_path(first_item.id)

    expect(page).to have_content(first_item.name)
    expect(page).to have_content(first_item.description)
    expect(page).to have_content(first_item.unit_price)
  end
  
  xit 'has link to merchant show page for that item' do 
    
  end
end
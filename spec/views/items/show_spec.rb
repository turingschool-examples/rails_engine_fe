require 'rails_helper'

RSpec.describe 'the item show page' do

  it 'has the item name and attributes' do
    item = ItemFacade.all_items.first

    visit "/items/#{item.id}"

    expect(page).to have_content(item.name)
    expect(page).to have_content(item.description)
    expect(page).to have_content(item.unit_price)
    expect(page).to have_content(item.merchant_id)
  end

end

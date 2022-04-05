require 'rails_helper'
RSpec.describe 'items index', :vcr do
  it 'lists all the items' do
    visit "/items"
    expect(page).to have_content("Item Index")
    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Item Expedita Fuga")
    expect(page).to have_content("Item Est Consequuntur")
  end

  it 'links to items show pages' do
    visit '/items'
    click_on "Item Nemo Facere"
    expect(current_path).to eq("/items/4")
  end
end

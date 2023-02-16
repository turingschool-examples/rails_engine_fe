require 'rails_helper'

RSpec.describe 'items index', type: :feature do
  describe 'visiting /items' do
    it 'see list of items by name' do
      visit '/items'

      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Expedita Aliquam")
      expect(page).to have_content("Item Provident At")
      expect(page).to have_content("Item Expedita Fuga")
      expect(page).to have_content("Item Est Consequuntur")
      expect(page).to have_content("Item Quo Magnam")
      expect(page).to have_content("Item Quidem Suscipit")
      expect(page).to have_content("Item Rerum Magni")
    end
  end

  it 'can click on an items name and be directed to that items show page' do
    visit '/items'

    click_link "Item Nemo Facere"

    expect(current_path).to eq("/items/4")
  end
end

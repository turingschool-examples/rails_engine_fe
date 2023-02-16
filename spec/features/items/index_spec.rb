require 'rails_helper'

RSpec.describe "Items index page" do
  it 'displays all items names by link' do
    visit items_path

    within("#item-4") do
      expect(page).to have_link("Item Nemo Facere")
    end
    
    within("#item-5") do
      expect(page).to have_link("Item Expedita Aliquam")
      expect(page).to_not have_link("Item Nemo Facere")

      click_link("Item Expedita Aliquam")
      
      expect(current_path).to eq(item_path(5))
    end
  end
end
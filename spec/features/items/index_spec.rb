require 'rails_helper'

RSpec.describe 'The items index page' do 
  it 'displays all merchants from API endpoint' do

    VCR.use_cassette('items_index') do 
      visit items_path

      within '#items' do 
        expect(page).to have_content("Item: Item Nemo Facere")
        expect(page).to have_content("Item: Item Expedita Aliquam")
        expect(page).to have_content("Item: Item Provident At")
        expect(page).to have_link("Item Provident At")
        click_link("Item Provident At")
        expect(current_path).to eq(item_path("6"))
      end  
    end 
  end 

end 
require 'rails_helper'

RSpec.describe 'The merchant show page' do 
  it 'displays one merchant and their items from API endpoint' do
    VCR.use_cassette('merchant_show') do 
      visit merchant_path("1")
      expect(page).to have_content("Merchant 1")

      within '#items' do 
        expect(page).to have_content("Name: Item Nemo Facere")
        expect(page).to have_content("Name: Item Expedita Aliquam")
      end  
    end 
  end 

  it 'has a link to bring the user to an items show page' do
    VCR.use_cassette('merchant_show_link_to_item') do 
      visit merchant_path("1")
      expect(page).to have_content("Merchant 1")

      within '#items' do 
        expect(page).to have_link("Item Nemo Facere")
        click_link("Item Nemo Facere")
        expect(current_path).to eq(item_path("4"))
      end  
    end 
  end 
end
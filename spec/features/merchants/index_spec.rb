require 'rails_helper'

RSpec.describe 'The merchants index page' do 
  it 'displays all merchants from API endpoint' do

    VCR.use_cassette('merchants_index') do 
      visit merchants_path

      within '#merchants' do 
        expect(page).to have_content("Merchants")
        expect(page).to have_content("Schroeder-Jerde")
        expect(page).to have_content("Klein, Rempel and Jones")
        expect(page).to have_content("Willms and Sons")
        expect(page).to have_content("Kozey Group")
      end  
    end 
  end 

  it 'displays each merchants name as a link to the show page' do

    VCR.use_cassette('merchants_index_link_to_show') do 
      visit merchants_path

      within '#merchants' do
        expect(page).to have_link("Schroeder-Jerde")
        click_link("Schroeder-Jerde")
        expect(current_path).to eq("/merchants/1")
      end  
    end 
  end 
end 
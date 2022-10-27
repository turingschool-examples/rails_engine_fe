require 'rails_helper'

RSpec.describe 'The Merchant Index Page' do
 it 'returns a list of merchants' do
  visit merchants_path

  expect(page).to have_content('Merchants')
 end
 
 describe "As a visitor, When I visit '/merchants'" do
  it "I should see a list of merchants by name" do
   visit merchants_path

   expect(page).to have_content('Williamson Group')
   expect(page).to have_content('Osinski, Pollich and Koelpin')
   expect(page).to have_content('Bernhard-Johns')
   expect(page).to have_content('Pollich and Sons')
   expect(page).to have_content('Kozey Group')
  end
 end

 describe "As a visitor, When I visit '/merchants'" do
  it "When I click the merchant's name I should be on page '/merchants/:id'" do

   visit merchants_path

   expect(page).to have_link("Schroeder-Jerde")

   click_link "Schroeder-Jerde"

   expect(current_path).to eq("/merchants/1")
  end
 end
end
require 'rails_helper'

RSpec.describe 'The Merchant Show Page' do
 describe 'returns a list of items per merchant' do
  describe "As a visitor, When I visit '/merchants/:id'" do
   it "I should see the name of that merchant" do
    visit "/merchants/1"

    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to_not have_content("Klein, Rempel and Jones")
    expect(page).to_not have_content("Williamson Group")
   end
  end
 end

 describe "As a visitor, When I visit '/merchants/:id'" do
  it "I should see a list of items that merchant sells." do
   visit "/merchants/1"

   expect(page).to have_content('Item Nemo Facere')
   expect(page).to have_content('Item Expedita Aliquam')
   expect(page).to have_content('Item Provident At')
   expect(page).to have_content('Item Expedita Fuga')
   expect(page).to_not have_content('Item Non In')
   expect(page).to_not have_content('Item Et Sequi')
  end
 end
end
require 'rails_helper'

RSpec.describe 'The Merchant Show Page' do
 describe 'returns a list of items per merchant' do
  describe "As a visitor, When I visit '/merchants/:id'" do
   it "I should see the name of that merchant" do
    visit "/merchants/1"

    expect(page).to have_content("Schroeder-Jerde")
   end
  end
 end

 describe "As a visitor, When I visit '/merchants/:id'" do
  it "I should see a list of items that merchant sells." do
   visit "/merchants/1"

   # within("#items") do
   #  expect(page).to have_link(item.name)
   # end
  end
 end
end
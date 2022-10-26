require 'rails_helper'

RSpec.describe 'The Merchant Index Page' do
 it 'returns a list of merchants' do
  visit merchants_path

  expect(page).to have_content([merchant1, merchant2, merchant3])
 end
 
 describe "As a visitor, When I visit '/merchants'" do
  it "I should see a list of merchants by name" do
   visit merchants_path

   within("#merchants") do
    expect(page).to have_content(merchant.name)
   end
  end
 end

 describe "As a visitor, When I visit '/merchants'" do
  it "When I click the merchant's name I should be on page '/merchants/:id'" do
   visit merchants_path

   within("#merchants") do
    expect(page).to have_link(merchant.name)

    click_link "Merchant Name"

    expect(current_path).to eq(merchant_path(merchant.id))
   end
  end
 end
end
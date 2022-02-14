require 'rails_helper'
RSpec.describe "the merchant index page" do
  it "gets all merchants and displays them", :vcr do
  visit '/merchants'
  expect(page).to have_link("Merchant 1")
  end

  it "links to a merchant's show page and shows all items", :vcr do
    visit '/merchants'
    click_link("Merchant 1")
    expect(current_path).to eq("/merchants/1")
    expect(page).to have_content("Merchant: Schroeder-Jerde")
    expect(page).to have_content("Name: Item Nemo Facere")
    expect(page).to have_content("Item Id: 4")
    expect(page).to have_content("Description: Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
    expect(page).to have_content("Unit Price: 42.91")
    expect(page).to have_content("Merchant Id: 1")
    expect(page).to have_content("Merchant: Schroeder-Jerde")
  end
end
require "rails_helper"

RSpec.describe Merchant, type: :feature do
  it 'lists all merchants as links to their respective show page', :vcr do
    visit '/merchants'
  
      expect(page).to have_link("Schroeder-Jerde")
   
    click_on "Schroeder-Jerde"
    expect(current_path).to eq("/merchant/1")

    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Item Quo Magnam")
  end  
end
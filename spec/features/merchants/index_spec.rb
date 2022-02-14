require 'rails_helper'

RSpec.describe "Merchants Index page", type: :feature do 

  describe "it lists merchants by name with links to the merchant show page" do
    it "has merchants" do 
      visit "/merchants"
      # save_and_open_page

      within ".merchant-1" do
        expect(page).to have_link("Schroeder-Jerde")
      end

      within '.merchant-2' do 
        expect(page).to have_link("Klein, Rempel and Jones")
      end

      within ".merchant-91" do
        expect(page).to have_link("Weissnat, Hermiston and Beer")
      end

      click_link("Schroeder-Jerde")
      expect(current_path).to eq("/merchants/1")

    end
  end
# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.

end

require 'rails_helper'

RSpec.describe "Merchants Index page", type: :feature do 

  describe "lists merchants by name with links to the merchant show page" do
    
    it "has merchants" do 
      visit "/merchants"

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

end

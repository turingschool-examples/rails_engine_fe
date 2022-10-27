require 'rails_helper'

RSpec.describe "Merchants index" do
  describe "GET /index" do
    it 'I should see a list of merchant names', :vcr do
      visit merchants_path
      expect(page).to have_link("Schroeder-Jerde")
    end
    it 'When I click on a name I should be taken to a merchant show page', :vcr do
      visit merchants_path
      click_link "Schroeder-Jerde"
      expect(current_path).to eq(merchant_path(1))
    end
  end
end

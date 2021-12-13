require "rails_helper"

RSpec.describe "Merchants index page", type: :feature do
  describe "as a visitor" do
    before(:each) do
      visit merchants_path
    end

    it "I see a link for each merchant that takes me to their show page" do
      click_on "Schroeder-Jerde"
      expect(current_path).to eq(merchant_path(1))
    end
  end
end
# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.

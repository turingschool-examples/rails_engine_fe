require "rails_helper"

RSpec.describe "Merchants show page", type: :feature do
  describe "as a visitor" do
    before(:each) do
      visit merchant_path(1)
    end

    it "I see a list of items that merchant sells in the show page" do
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Expedita Aliquam")
      expect(page).to have_content("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas")
      expect(page).to have_content("42.91")
      expect(page).to have_content("687.23")
    end
  end
end

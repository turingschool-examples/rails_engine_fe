require "rails_helper"

RSpec.describe "items index page", type: :feature do
  describe "as a visitor" do
    before(:each) do
      visit items_path
    end

    it "I see a link to each name of items that takes me to item show page" do
      click_on "Item Nemo Facere"
      expect(current_path).to eq(item_path(4))
    end

    it "takes me to the show page with name, description and unit price" do
      click_on "Item Nemo Facere"
      expect(page).to have_content("Item Name: Item Nemo Facere")
      expect(page).to have_content("Unit Price: $42.91")
      expect(page).to have_content("Description: Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
    end
  end
end

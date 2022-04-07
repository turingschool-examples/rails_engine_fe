require "rails_helper"

RSpec.describe "merchants show" do
  describe "when I visit the merchants show page, " do
    it "has a list of items that this merchant sells" do
      merchants = MerchantFacade.all_merchants
      merchant = merchants[0]
      visit "/merchants/#{merchant.id}"

      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Expedita Aliquam")
      expect(page).to have_content("Item Provident At")
    end
  end
end

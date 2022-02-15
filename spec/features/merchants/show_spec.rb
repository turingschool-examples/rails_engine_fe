require 'rails_helper'

RSpec.describe "Merchant Show Page" do
  describe 'user visits a specific merchant page' do
    # it 'displays the merchant name' do
    #   visit merchant_path(1)
    #   expect(page).to have_content("Schroeder-Jerde")
    # end

    it 'displays a list of all items that the merchant sells' do
      visit merchant_path(1)

      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Est Consequuntur")
    end
  end
end

require 'rails_helper'
# ber spec/features/merchants/show_spec.rb
# save_and_open_page
RSpec.describe 'Merchant show page' do
  describe 'One Merchant' do
    let(:merchant) { MerchantsFacade.merchant_by_id(2) }

    it 'has a link to merchants show page' do
      visit merchants_path

      click_on merchant.name

      expect(current_path).to eq(merchant_path("#{merchant.id}"))
    end
  end

  describe 'One Merchants Items' do
    let(:items) { MerchantsFacade.merchant_items(2) }

    it 'has merchant attributes and items' do
      visit merchant_path(2)
      require "pry"; binding.pry

      expect(page).to have_content(merchant.name)
      expect(page).to have_content(item[0].name)
      # expect(page).to have_content(merchant.items)
      # require "pry"; binding.pry
      # expect(page).to_not have_content()
    end
  end
end

# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.

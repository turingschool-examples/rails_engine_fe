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

    let(:items) { MerchantsFacade.merchant_items(2) }

    it 'has merchant attributes and items' do
      visit merchant_path(2)

      expect(page).to have_content(merchant.name)

      items.each do |item|
        expect(page).to have_content(item.name)
        expect(page).to_not have_content(item.description)
        expect(page).to_not have_content(item.unit_price)
      end
    end
  end
end

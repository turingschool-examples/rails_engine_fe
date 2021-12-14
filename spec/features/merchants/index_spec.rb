require 'rails_helper'
# ber spec/features/merchants/index_spec.rb
# save_and_open_page
RSpec.describe 'Merchants index page' do
  describe 'All Merchants' do
    before :each do
      visit merchants_path
    end

    let(:merchant) { MerchantsFacade.all_merchants[0..4] }

    it 'lists all merchants by name' do
      expect(page).to have_content(merchant[0].name)

      expect(page).to have_link(merchant[0].name)

      click_on merchant[0].name

      expect(current_path).to eq(merchant_path("#{merchant[0].id}"))
    end

    it 'has a link to merchants show page' do
      expect(page).to have_link(merchant[0].name)
      expect(page).to have_link(merchant[1].name)
      expect(page).to have_link(merchant[2].name)
      expect(page).to have_link(merchant[3].name)
      expect(page).to have_link(merchant[4].name)

      click_on merchant[0].name

      expect(current_path).to eq("/merchants/#{merchant[0].id}")

      expect(page).to have_content(merchant[0].name)

      expect(page).to_not have_content(merchant[1].name)
      expect(page).to_not have_content(merchant[2].name)
      expect(page).to_not have_content(merchant[3].name)
      expect(page).to_not have_content(merchant[4].name)
    end
  end
end

require 'rails_helper'

RSpec.describe '/' do
  describe 'when I visit the welcome page' do
    let!(:merchants) { MerchantsFacade.merchants }
    before { visit root_path }

    it 'shows a search form to find a merchant by name' do
      expect(page).to have_field(:search)
    end

    it 'can search for merchants' do
      merchant = merchants.sample

      fill_in :search, with: merchant.name
      click_on "Search Merchants by Name"

      expect(page).to have_content(merchant.name)
      save_and_open_page

      click_on merchant.name

      expect(current_path).to eq(merchant_path(merchant.id))
    end
  end
end
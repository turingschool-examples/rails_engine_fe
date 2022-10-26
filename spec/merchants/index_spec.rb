# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Merchants | Index', :vcr, type: :feature do
  describe 'As a visitor, when I visit /merchants;' do
    let!(:visit) { visit merchants_path }
    merchant_list = { 'Schroeder-Jerde': 1, 'Klein, Rempel and Jones': 2, 'Willms and Sons': 3, 'Cummings-Thiel': 4,
                      'Ullrich-Moen': 17, 'Bechtelar, Jones and Stokes': 8 }

    it 'I should see a list of merchants by name' do
      within('#merchants') do
        within('h1') do
          expect(page).to have_content('Merchants')
        end

        merchant_list.each { |merchant_name, _id| expect(page).to have_content merchant_name }
      end
    end

    it 'each MerchantObject should have a link to its show page' do
      merchant_list.each do |merchant_name, id|
        click_on merchant_name

        expect(current_path).to eq merchant_path(id)

        visit merchants_path
      end
    end
  end
end

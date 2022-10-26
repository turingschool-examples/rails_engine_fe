# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Merchants | Index', :vcr, type: :feature do
  describe 'As a visitor, when I visit /merchants;' do
    before(:each) { visit merchants_path }
    merchant_list = { 'Schroeder-Jerde': 1, 'Klein, Rempel and Jones': 2, 'Willms and Sons': 3, 'Cummings-Thiel': 4,
                      'Ullrich-Moen': 17, 'Bechtelar, Jones and Stokes': 10 }
    it 'i should see a list of merchants by name and each MerchantObject should have a link to its show page' do
      merchant_list.each do |merchant_name, id|
        expect(page).to have_link(merchant_name, href: "/merchants/#{id}")
      end
    end
  end
end

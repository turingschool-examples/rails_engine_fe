require 'rails_helper'

RSpec.describe 'Merchant index page' do
  it 'displays the list of merchants by name as a link' do
    visit merchants_path

    expect(page).to have_content("Merchants")

    within("#merchant-1") do
      expect(page).to have_link("Schroeder-Jerde")
    end

    within("#merchant-2") do
      expect(page).to have_link("Klein, Rempel and Jones")
      expect(page).to_not have_link("Schroeder-Jerde")
      click_link("Klein, Rempel and Jones")

      expect(current_path).to eq(merchant_path(2))
    end
  end
end
require 'rails_helper'

RSpec.describe 'merchants index page' do
  it 'displays a list of merchants' do
    visit merchants_path

    expect(page).to have_content("Merchants")
    within("#merchants_id_1") do

      expect(page).to have_content("Schroeder-Jerde")
    end
  end

  it 'has a link on each merchants name to the merchant show page' do
    visit merchants_path

    within("#merchants_id_1") do
      expect(page).to have_link("Schroeder-Jerde")
      click_link("Schroeder-Jerde")
      expect(current_path).to eq("/merchants/1")
    end
  end
end

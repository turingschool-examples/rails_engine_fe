require 'rails_helper'

RSpec.describe 'Merchant Index Page' do
  it 'displays all merchants' do
    visit merchants_path

    expect(page).to have_link('Schroeder-Jerde')
    expect(page).to have_link('Glover Inc')
  end

  it 'links to the merchants show page' do
    visit merchants_path
    merchant = MerchantFacade.merchants_index.first
    click_link 'Schroeder-Jerde'

    expect(current_path).to eq("/merchants/#{merchant.id}")
  end
end
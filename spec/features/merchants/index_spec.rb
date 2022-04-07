require 'rails_helper'

RSpec.describe 'Merchant index' do

  it 'sees a list of merchants' do
    visit '/merchants'

    expect(page).to have_content('Schroeder-Jerde')
  end

  it 'sees and clicks link' do
    visit '/merchants'
    merchant = MerchantFacade.all_merchants[0]
    click_link('Schroeder-Jerde')
    expect(current_path).to eq("/merchants/#{merchant.id}")
  end
end

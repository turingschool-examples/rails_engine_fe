require 'rails_helper'

RSpec.describe 'Merchant Show' do

  it 'sees a list of merchants' do
    merchants = MerchantFacade.all_merchants
    merchant = merchants[0]

    visit '/merchants'

    expect(page).to have_content('Schroeder-Jerde')

    click_link('Schroeder-Jerde')

    expect(current_path).to eq("/merchants/#{merchant.id}")

    expect(page).to have_content('Item Nemo Facere')
    expect(page).to have_content('Item Expedita Aliquam')
    expect(page).to have_content('Item Provident At')
  end
end

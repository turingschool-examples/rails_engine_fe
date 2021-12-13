require 'rails_helper'

RSpec.describe 'Merchant Show Page' do
  let!(:merchant) { MerchantFacade.merchants_index.first }

  it 'displays the merchants name' do
    visit merchant_path(1)

    expect(page).to have_content('Schroeder-Jerde')
  end
  
  it 'lists all of the merchants items' do
    visit merchant_path(1)

    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Item Ea Voluptatum")
  end
end
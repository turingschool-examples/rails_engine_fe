require 'rails_helper'

RSpec.describe 'merchant show page' do
  it 'displays a list of items the merchant sells' do
    visit merchant_path(1)

    expect(page).to have_content("Schroeder-Jerde's Items")
  end

  it 'displays a list of the merchant items' do
    visit "merchants/1/items"

    expect(page).to have_content("Item Nemo Facere")
  end
end

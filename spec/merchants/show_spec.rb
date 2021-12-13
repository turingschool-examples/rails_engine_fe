require 'rails_helper'

describe 'merchant_index' do
  it 'shows all items that belong to a given merchant' do
    visit '/merchants/1'

    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Item Ea Voluptatum")
  end
end

require 'rails_helper'

RSpec.describe 'Merchant show page' do
  it 'can display the merchant items' do
    visit merchant_path(1)

    expect(page).to have_content("Merchant 1")

    within('#item-4') do
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to_not have_link("Item Expedita Aliquam")
    end
  end
end
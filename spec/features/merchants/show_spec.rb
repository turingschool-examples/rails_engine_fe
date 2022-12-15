require 'rails_helper'

RSpec.describe 'Merchant show page' do
  it 'has all the merchant items', :vcr do
    visit merchant_path(1)

    within("#items") do
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Expedita Aliquam")
      expect(page).to have_content("Item Provident At")
      expect(page).to_not have_content("Item Adipisci Sint")
    end
  end
end
require 'rails_helper'
RSpec.describe 'merchant show page' do
  it 'has merchant name and list of items they sell' do
    VCR.use_cassette("merchant_show") do
      visit '/merchants/1'
      expect(page).to have_content("Schroeder-Jerde")
      expect(page).to have_content("Item Nemo Facere")
    end
  end
end

require 'rails_helper'

RSpec.describe 'merchants show page' do
  it 'displays the items a merchant sells', :vcr do
    visit '/merchants/1'

    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Item Expedita Aliquam")
    expect(page).to have_content("Item Ea Voluptatum")
    expect(page).to have_content("Item Rerum Est")
  end
end

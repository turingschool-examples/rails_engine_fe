require 'rails_helper'

RSpec.describe 'merchants index page' do
  it 'shows all merchants by name', :vcr do
    visit merchants_path

    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Klein, Rempel and Jones")
    expect(page).to have_content("Willms and Sons")
    expect(page).to_not have_content("Item Nemo Facere")
  end 

  it 'shows the merchants name as a link that goes to the merchant show page', :vcr do
    visit merchants_path

    expect(page).to have_content("Schroeder-Jerde")
    click_on "Schroeder-Jerde"

    expect(current_path).to eq(merchant_path(1))

    within("#items") do
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Expedita Aliquam")
      expect(page).to have_content("Item Provident At")
      expect(page).to_not have_content("Item Adipisci Sint")
    end
  end
end
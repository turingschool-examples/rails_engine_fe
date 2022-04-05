require 'rails_helper'

RSpec.describe 'Merchant Index' do
  it 'displays a list of merchants' do
    visit '/merchants'

    expect(page).to have_content("Merchants")
    expect(page).to have_content("Schroeder-Jerde")

  end

  it 'has a link to take me to merchant show page' do
    visit '/merchants'

    expect(page).to have_link("Schroeder-Jerde")
  end
end
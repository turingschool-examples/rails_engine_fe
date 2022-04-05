require 'rails_helper'

RSpec.describe 'Merchants index page', :vcr do
  it 'has a header with Merchants' do
    visit '/merchants'
    expect(page).to have_content("Merchants")
  end

  it 'lists all merchants' do
    visit '/merchants'
    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Willms and Sons")
    expect(page).to have_content("Osinski, Pollich and Koelpin")
    expect(page).to have_content("Kozey Group")

  end
end

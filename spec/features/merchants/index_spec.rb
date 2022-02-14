require 'rails_helper'

RSpec.describe 'Merchants Index Page' do
  it 'displays all of the merchants in db' do
    visit '/merchants'
    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Klein, Rempel and Jones")
    expect(page).to have_content("Willms and Sons")
  end

  it "displays a link to the merchants show page" do
    visit '/merchants'
    expect(page).to have_link("Schroeder-Jerde")

    click_on "Schroeder-Jerde"
    expect(current_path).to eq "/merchants/1"

  end
end

require 'rails_helper'

RSpec.describe 'Merchants Index Page' do
  it 'displays all of the merchants in db' do
    merchants = create_list(:merchant, 3)
    visit '/merchants'
    expect(page).to have_content(merchants[0].name)
    expect(page).to have_content(merchants[1].name)
    expect(page).to have_content(merchants[2].name)
  end
end 

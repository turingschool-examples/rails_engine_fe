require 'rails_helper'

RSpec.describe 'Merchant index' do
  it 'can show all merchants' do
    visit '/merchants'
    expect(page).to have_link("Schroeder-Jerde")
  end

  it 'can direct to show page if link is clicked' do
    visit '/merchants'
    click_link("Schroeder-Jerde")
    expect(page).to have_content("Schroeder-Jerde")
  end
 end

require 'rails_helper'

describe 'merchant_index' do
  it 'shows all merchants' do
    visit '/merchants'

    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Glover Inc")
  end
end

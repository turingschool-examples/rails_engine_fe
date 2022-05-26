require 'rails_helper'

RSpec.describe 'Merchant Index' do
  it 'returns a list of merchants by name' do
    visit '/merchants'

    expect(page).to have_content('Name: Willms and Sons')
    # expect(page).to have_link('Willms and Sons')
    # click_link 'Willms and Sons'
    # expect(current_path).to eq("/merchant/3")
  end
end
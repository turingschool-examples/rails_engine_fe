require 'rails_helper'

RSpec.describe 'merchants index' do
  it 'shows a list of merchants' do
    visit '/merchants'

    expect(page).to have_content('Merchants')
    expect(page).to have_content('Schroeder-Jerde')

    click_on 'Schroeder-Jerde'
    expect(current_path).to eq('/merchants/1')
    expect(page).to have_content('Schroeder-Jerde')
    expect(page).to have_content('Item')
  end
end

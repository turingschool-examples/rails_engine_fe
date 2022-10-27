require 'rails_helper'

RSpec.describe 'merchants index' do
  it 'returns a list of merchants' do
    visit merchants_path

    expect(page).to have_content('Merchants')
    expect(page).to have_content('Schroeder-Jerde')
  end

  it 'has a link to each merchants show page' do
    visit merchants_path

    expect(page).to have_link('Schroeder-Jerde')
  end

  it 'When I click on the link, I am taken to the merchants show page where all of their items are displayed' do
    visit merchants_path

    click_link('Schroeder-Jerde')

    expect(current_path).to eq('/merchants/1')

    expect(page).to have_content('Schroeder-Jerde')
    expect(page).to have_content('Item Nemo Facere')
  end
end



# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.
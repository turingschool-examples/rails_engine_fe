require 'rails_helper'

RSpec. describe 'merchants index' do
#   As a visitor, 
# When I visit '/merchants' 
# I should see a list of merchants by name 
# and when I click the merchant's name 
# I should be on page '/merchants/:id' 
# And I should see a list of items that merchant sells.

  it 'retrieves a list of merchants' do
    visit merchants_path
    expect(page).to have_content('Merchants')
    expect(page).to have_content('Schroeder-Jerde')

    click_on 'Schroeder-Jerde'
    expect(current_path).to eq('/merchants/1')
    expect(page).to have_content('Schroeder-Jerde')

    expect(page).to have_content('Item')
  end



end
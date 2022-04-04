require 'rails_helper'
RSpec.describe 'Merchant index page' do
  it 'will list all merchants' do
    visit '/merchants/'
    expect(page).to have_content('All Merchants')
    expect(page).to have_content(@merchants)
  end
end

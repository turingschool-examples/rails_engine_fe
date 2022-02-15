require 'rails_helper'

RSpec.describe 'Merchants Index Page' do
  it 'shows list of all merchants' do

    visit '/merchants'
    # expect(Merchant.all.count).to eq(9)
    expect(page).to have_content('All Merchants')
  end

  it 'clicks on the link of the merchant name to display all their items' do
    visit '/merchants/1'

  end
end

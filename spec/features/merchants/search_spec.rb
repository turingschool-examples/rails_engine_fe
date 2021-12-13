require 'rails_helper'

RSpec.describe 'Merchants search page' do
  before(:each) do
    visit '/merchants/search'
  end
  it 'has a merchant search bar' do
    fill_in 'search', with: 'iLl'

    click_button 'Search'

    expect(current_path).to eq('/merchants/search')
    
    expect(page).to have_content('Willms and Sons')
    expect(page).to have_content('Schiller, Barrows and Parker')
  end
end
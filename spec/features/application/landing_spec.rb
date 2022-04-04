require 'rails_helper'

RSpec.describe 'Application Landing Page' do
  it 'search bar to search all merchants by name' do
    visit '/'
    
    expect(page).to have_css("#merchant_search")
    expect(page).to have_field(:search)
  end
  
  it 'user can search by merchant name in search bar' do 
    visit '/'

    fill_in :search, with: 'the'
    click_button 'Submit'

    expect(current_path).to eq merchants_path
  end
end
require 'rails_helper'

RSpec.describe 'Merchants Index Page', type: :feature do
  it 'should list out all merchants' do
    visit merchants_path

    within("#merchant-1") do 
      expect(page).to have_content('Schroeder-Jerde')
    end
    
    within("#merchant-2") do 
      expect(page).to have_content('Klein, Rempel and Jones')
    end
  end

  it 'has a link to the merchant show page' do
    visit merchants_path 

    click_on 'Schroeder-Jerde'

    expect(current_path).to eq(merchant_path(1))
  end
end

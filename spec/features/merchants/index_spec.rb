require 'rails_helper'

RSpec.describe 'Merchant Index Page' do
  it 'has list of all merchants' do 
    visit merchants_path
    merchants = MerchantFacade.all_merchants
    
    expect(page).to have_css("#merchants")
    
    within("#merchants") do
      expect(page).to have_css("#name", count: merchants.count)
    end
  end
  
  it 'each merchant name is a link to merchant show page' do 
    visit merchants_path
    first_merchant = MerchantFacade.all_merchants.first
    
    within(first("#name")) do 
      click_link
    end
    
    expect(current_path).to eq(merchant_path(first_merchant.id))
  end
  
  it 'returns results of merchant search from landing page' do 
    visit '/'
    
    fill_in :search, with: 'the'
    click_button 'Submit'
    
    expect(current_path).to eq merchants_path
    
    expect(page).to have_css("#name", count: 2)
    expect(page).to have_link("Rutherford, Bogan and Leannon")
    expect(page).to have_link("Shields, Hirthe and Smith")
  end
end
require 'rails_helper'

RSpec.describe 'Movie Index Page' do
  it 'has list of all merchants' do 
    visit merchants_path
    merchants = MerchantFacade.all_merchants
    
    expect(page).to have_css("#merchants")
    expect(page).to have_css("#name, merchants.count")
    
    within("#merchants") do
      expect(page).to have_css("#name")
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
end
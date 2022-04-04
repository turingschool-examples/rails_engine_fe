require 'rails_helper'

RSpec.describe 'The merchant show page' do 
  it 'displays one merchant and their items from API endpoint' do

    VCR.use_cassette('merchant_show') do 
      visit merchant_path("1")
      expect(page).to have_content("Merchant 1")

      within '#items' do 
      end  
    end 
  end 
end
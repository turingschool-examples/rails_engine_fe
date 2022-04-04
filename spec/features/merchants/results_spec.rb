require 'rails_helper'

RSpec.describe 'The merchants results page' do 
  it 'displays the merchant result from a search on root directory' do
    VCR.use_cassette('root_directory_single_merchant') do 
      visit '/'
      fill_in 'name', with: 'ill'
      click_button 'Search'
      expect(current_path).to eq('/merchants/results')
      expect(page).to have_content("Willms and Sons")
      expect(page).to have_link("Willms and Sons")
      click_link("Willms and Sons")
      expect(current_path).to eq(merchant_path("3"))
   end 
  end
end 

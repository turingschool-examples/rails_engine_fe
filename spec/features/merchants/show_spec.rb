require 'rails_helper'

RSpec.describe 'The merchant show page' do 
  it 'displays one merchant and their items from API endpoint' do

    VCR.use_cassette('merchant_show') do 
      visit merchant_path("1")
      expect(page).to have_content("Merchant 1")

      within '#items' do 
        expect(page).to have_content("Name: Item Nemo Facere")
        expect(page).to have_content("Description: Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
        expect(page).to have_content("42.91")
        expect(page).to have_content("Name: Item Expedita Aliquam")
        expect(page).to have_content("Description: Voluptate aut labore qui illum tempore eius. Corrupti cum et rerum. Enim illum labore voluptatem dicta consequatur. Consequatur sunt consequuntur ut officiis.")
        expect(page).to have_content("687.23")
      end  
    end 
  end 
end
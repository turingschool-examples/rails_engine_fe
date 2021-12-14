require 'rails_helper'

RSpec.describe 'merchant show page' do 
  context 'happy path' do 
    it 'shows merchant and items' do 
      VCR.use_cassette('rails-engine_merchant_show', re_record_interval: 7.days) do 
        visit '/merchants/1' 

        expect(page.status_code).to eq(200)
        expect(page).to have_content("Schroeder-Jerde")
        expect(page).to have_link('Item Nemo Facere')
      end 
    end 
  end 
end 
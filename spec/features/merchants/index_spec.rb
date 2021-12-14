require 'rails_helper'

RSpec.describe 'merchants show page' do 
  context 'happy path' do 
    it 'shows list of merchants' do 
      VCR.use_cassette('rails-engine_merchants', re_record_interval: 7.days) do 
        visit "/merchants"
     
        expect(page.status_code).to eq(200)

        expect(page).to have_link("Schroeder-Jerde")
      end 
    end 
  end 
end 
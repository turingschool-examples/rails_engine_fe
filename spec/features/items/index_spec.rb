require 'rails_helper'

RSpec.describe 'items index page' do 
  context 'happy path' do 
    it 'lists all items' do 
      VCR.use_cassette('rails-engine_items', re_record_interval: 7.days) do 
        visit '/items'
        
        expect(page.status_code).to eq(200)
        expect(page).to have_link('Item Nemo Facere')
      end 
    end
  end 
end 
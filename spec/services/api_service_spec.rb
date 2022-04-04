require 'rails_helper'

RSpec.describe 'The rails engine API Service' do 
  context 'Class methods' do 
    it '.get_merchants' do 
      VCR.use_cassette('get_merchants') do 
        all_merchants = ApiService.get_merchants 

        expect(all_merchants).to be_an(Array)
      end
    end 
  end
end 
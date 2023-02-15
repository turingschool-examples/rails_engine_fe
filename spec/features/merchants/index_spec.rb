require 'rails_helper'

RSpec.describe 'Merchant Index' do 
  describe 'when I visit /merchants' do 
    it 'shows a list of merchants by name' do 
      visit merchants_path 
      
    end

    xit 'has a link for each merchant name to merchant show page' do 

    end
  end
end
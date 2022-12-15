require 'rails_helper'

RSpec.describe 'Merchants' do
  describe 'show' do
    it 'has a list of an individual merchants items' do
      merchant1 = MerchantSearch.new.single_merchant_items(1)

      visit "/merchants/#{merchant1[:data][0][:attributes][:merchant_id]}"

      merchant1[:data].each do |item|
        expect(page).to have_content(item[:attributes][:name])
      end
    end

  end

end
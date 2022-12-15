require 'rails_helper'

RSpec.describe 'Merchants' do
  before(:each) do
    @merchants = MerchantSearch.new.all_merchants

    visit '/merchants'
  end

  describe 'Index page' do
    it 'has a list of all merchants' do
      @merchants.each do |merchant|
        expect(page).to have_link(merchant[:attributes][:name])
      end
    end

    it 'can link to an individual merchants show page' do
      merchant1 = @merchants[0][:attributes][:name]

      click_link(merchant1)
    end
  end
end

require 'rails_helper'

RSpec.describe 'Merchant Index' do
  before :each do
    @merchants = MerchantFacade.merchants
    @merchant = MerchantFacade.merchant(1)
  end

  it 'displays a list of merchants' do
    visit '/merchants'

    @merchants.each do |merchant|
      expect(page).to have_link(merchant.name)
    end
  end

  it 'links to a merchants show page from index' do
    visit '/merchants'

    within("#merchant-#{@merchant.id}") do
      click_link(@merchant.name)
      expect(current_path).to eq("/merchants/#{@merchant.id}")
    end
  end
end

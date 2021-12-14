require 'rails_helper'

RSpec.describe 'Merchants index',type: :feature do
  before :each do
    @merchants = MerchantFacade.merchants
    @merchant = MerchantFacade.merchant(1)
  end
  it 'shows merchants' do
    visit merchants_path
    @merchants.each do |merchant|
      expect(page).to have_content(merchant.name)
    end
  end
  
  it 'has a link to the Merchant' do
    visit merchants_path

    click_link @merchant.name

    expect(current_path).to eq merchant_path(@merchant.id)
  end
end

# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.
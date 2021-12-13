require 'rails_helper'

RSpec.describe 'Merchant Show Page' do
  before :each do
    @merchant = MerchantFacade.merchant(1)
    @merchant_items = MerchantFacade.items(@merchant.id)
    @first_item = @merchant_items.first
  end

  it 'displays a merchants name and items' do
    visit "/merchants/#{@merchant.id}"

    expect(page).to have_content(@merchant.name)
    @merchant_items.each do |item|
      expect(page).to have_link(item.name)
    end
  end

  it 'links to the items show page' do
    visit "/merchants/#{@merchant.id}"

    within("#item-#{@first_item.id}") do
      click_link(@first_item.name)
    end
    expect(current_path).to eq("/items/#{@first_item.id}")
  end
end

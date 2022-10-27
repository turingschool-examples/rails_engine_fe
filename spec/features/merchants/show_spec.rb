require 'rails_helper'

RSpec.describe "merchants show page" do

  before :each do
    @merchant = MerchantsFacade.get_merchants.first
    @merchant_items = ItemsFacade.get_merchant_items(@merchant.id)
    visit merchant_path(@merchant.id)
  end

  it 'shows the merchants name' do
    expect(page).to have_content(@merchant.name)
  end

  it 'shows the merchant items' do
    @merchant_items.each do |item|
      expect(page).to have_content(item.name)
    end
  end
end
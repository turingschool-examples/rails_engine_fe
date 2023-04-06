require 'rails_helper'

RSpec.describe "merchants show page" do

  before :each do
    @merchant = MerchantsFacade.get_merchants.first
    visit merchant_path(@merchant.id)
  end

  it 'shows the merchants name' do
    expect(page).to have_content(@merchant.name)
  end

  it 'shows the merchant items as links to their show pages' do
    @merchant.items.each do |item|
      expect(page).to have_link(item.name)
    end
    first_item = @merchant.items.first
    click_link first_item.name
    expect(current_path).to eq(item_path(first_item.id))
  end
end
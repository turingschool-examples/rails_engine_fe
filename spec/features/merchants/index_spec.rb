require 'rails_helper'

RSpec.describe "merchants index page" do

  before :each do
    @merchants = MerchantsFacade.get_merchants
  end

  it 'lists all the merchants' do
    visit merchants_path

    @merchants.each do |merchant|
      expect(page).to have_content(merchant.name)
    end
  end

  it 'each merchant name is a link to their show page' do
    visit merchants_path

    @merchants.each do |merchant|
      expect(page).to have_link(merchant.name)
    end

    click_link @merchants.first.name
    
    expect(current_path).to eq(merchant_path(@merchants.first.id))
  end
end
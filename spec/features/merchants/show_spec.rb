require 'rails_helper'

RSpec.describe "merchants show page" do

  before :each do
    @merchant = MerchantsFacade.get_merchants.first
    visit merchant_path(@merchant.id)
  end

  it 'shows the merchants name' do
    expect(page).to have_content(@merchant.name)
  end
end
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
end
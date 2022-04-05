require 'rails_helper'
RSpec.describe 'Merchant Item show  page' do
  it "will list all a merchant's items on the show page" do
    first_merchant = MerchantFacade.all_merchants.first
    first_merchant_item = MerchantFacade.all_merchant_items(1).first

    visit merchant_path(first_merchant.id)
    within '#merchant'
    expect(page).to have_content(first_merchant.name)

    within '#item_id_1'
    expect(page).to have_content(first_merchant_item.name)
    expect(page).to have_content(first_merchant_item.description)
    expect(page).to have_content(first_merchant_item.unit_price)
  end
end

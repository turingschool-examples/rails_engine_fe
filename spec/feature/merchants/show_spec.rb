require 'rails_helper'

RSpec.describe 'Merchants Show Page', type: :feature do
  it 'should have details for a merchant' do
    merchant = MerchantFacade.merchant(1)
    items = MerchantFacade.merch_items(merchant.id)
    item = items.first

    visit merchant_path(merchant.id)

    expect(page).to have_content(merchant.name)
    expect(page).to have_content('Item Nemo Facere')
  end
end

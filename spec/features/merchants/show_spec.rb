require 'rails_helper'

RSpec.describe 'Merchants Show' do
  before(:each) do
    @merchant = MerchantsFacade.merchant_by_id(1)
    @items = MerchantsFacade.merchant_items(1)
    visit merchant_path(1)
  end

  it 'shows the name of a merchant' do
    expect(page).to have_content('Schroeder-Jerde')
  end

  it 'shows a list of merchant items' do
    expect(page).to have_content('Schroeder-Jerde')

    expect(@merchant.id).to eq(@items.first.merchant_id)

    expect(page).to have_link(@items.first.name)
  end
end

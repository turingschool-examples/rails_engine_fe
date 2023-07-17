require 'rails_helper'

RSpec.describe '/merchants' do
  let!(:merchants) { MerchantsFacade.merchants }
  let!(:merchant_1) { MerchantsFacade.merchant(merchants.first.id) }
  let!(:merchant_2) { MerchantsFacade.merchant(merchants.third.id) }

  
  before { visit merchants_path }
  
  it 'displays a list of merchants by name' do
    merchants.each do |merchant|
      expect(page).to have_content(merchant.name)
    end
  end

  it 'links to each merchant show page' do
    click_on merchant_1.name

    expect(current_path).to eq(merchant_path(merchant_1.id))

    expect(page).to have_content(merchant_1.name)
    expect(page).not_to have_content(merchant_2.name)

    merchant_1.items.each do |item|
      expect(page).to have_content(item.name)
    end
  end
end
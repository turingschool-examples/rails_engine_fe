require 'rails_helper'
RSpec.describe 'Merchant index page' do
  it 'will list all merchants' do
    first_merchant = MerchantFacade.all_merchants.first

    visit merchants_path
    within "#merchants"
    expect(page).to have_content('All Merchants')
    within  "#index_id_1"
    expect(page).to have_content(first_merchant.name)
    expect(page).to have_link(first_merchant.name)
    click_link(first_merchant.name)
    expect(current_path).to eq(merchant_path(first_merchant.id))
    # within  "#index_id_2"
    # expect(page).to have_content('Klein, Rempel and Jones')
    # expect(page).to have_link('Klein, Rempel and Jones')
  end

  # it 'links route to merchant show page' do
    # first_merchant = MerchantFacade.all_merchants.first
    #
    # visit merchants_path
    # within  "#index_id_1" do
    #   click_link '#{first_merchant.name}'
    # end
    # expect(current_path).to eq(merchant_path(first_merchant.id))
    # end
  end

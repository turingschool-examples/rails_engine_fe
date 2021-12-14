require 'rails_helper'

RSpec.describe 'Merchants Index spec' do
  before do
    visit merchants_path
  end

  it 'when i visit /merchants', :vcr do
    expect(current_path).to eq(merchants_path)
  end

  it 'has all merchant names', :vcr do
    expect(page).to have_content(Merchant.first)
    expect(page).to have_content(Merchant.last)
  end

  xit 'names are links to show page', :vcr do
    # require "pry"; binding.pry
    # save_and_open_page
    click_link Merchant.first

    expect(current_path).to eq(merchant_path(Merchant.first))
  end
end

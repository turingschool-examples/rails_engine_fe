require 'rails_helper'

RSpec.describe 'The Merchant Show page' do
  it 'displays the name of the merchant' do
    stub_merchant_show

    visit '/merchants/1'

    expect(page).to have_content 'Merchant 1'
    expect(page).to have_content 'Name: Schroeder-Jerde'
  end
end

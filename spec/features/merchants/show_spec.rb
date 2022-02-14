require 'rails_helper'

RSpec.describe 'Merchants Show Page' do
  before(:each) do

    merchant_1_json = File.read('./spec/fixtures/merchant_1.json')
    merchant_1_items_json = File.read('./spec/fixtures/merchant_1_items.json')

    stub_request(:get, "http://localhost:3000/api/v1/merchants/1").
         to_return(status: 200, body: merchant_1_json, headers: {})
    stub_request(:get, "http://localhost:3000/api/v1/merchants/1/items").
         to_return(status: 200, body: merchant_1_items_json, headers: {})

    visit "/merchants/1"
  end

  it 'lists items that this merchant sells' do
    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Item Provident At")
    expect(page).to have_content("Item Qui Esse")
  end

end

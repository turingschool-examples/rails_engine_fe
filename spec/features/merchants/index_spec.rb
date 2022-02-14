require 'rails_helper'

RSpec.describe 'Merchants Index Page' do
  before(:each) do

    merchants_json = File.read('./spec/fixtures/merchants.json')
    merchant_99_json = File.read('./spec/fixtures/merchant_99.json')
    merchant_99_items_json = File.read('./spec/fixtures/merchant_99_items.json')
    stub_request(:get, "http://localhost:3000/api/v1/merchants").
         to_return(status: 200, body: merchants_json, headers: {})
    stub_request(:get, "http://localhost:3000/api/v1/merchants/99").
         to_return(status: 200, body: merchant_99_json, headers: {})
    stub_request(:get, "http://localhost:3000/api/v1/merchants/99/items").
         to_return(status: 200, body: merchant_99_items_json, headers: {})

    visit '/merchants'
  end

  it 'lists links to each merchant' do
    expect(page).to have_link("Schroeder-Jerde") # id 1
    expect(page).to have_link("Willms and Sons") # id 3
    expect(page).to have_link("Fahey-Stiedemann") # id 99
  end

  context 'takes you to correct path when clicking a merchant link' do
    it 'link id-99' do
      click_on("Fahey-Stiedemann")
      expect(current_path).to eq("/merchants/99")
    end
  end

end

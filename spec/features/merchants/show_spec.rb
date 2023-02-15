require 'rails_helper'

RSpec.describe 'merchant show page' do
  before(:each) do
    stub_request(:get, 'http://localhost:3000/api/v1/merchants/1')
      .to_return(status: 200, body: File.read('spec/fixtures/merchant1.json'))
    stub_request(:get, 'http://localhost:3000/api/v1/merchants/1/items')
      .to_return(status: 200, body: File.read('spec/fixtures/merchant1_items.json'))
  end

  it 'displays the merchant and lists the merchants items' do
    visit merchant_path(1)

    expect(page).to have_content('Schroeder-Jerde')
    expect(page).to have_link('Item Nemo Facere', href: item_path(4))
    expect(page).to have_link('Item Ea Voluptatum', href: item_path(2500))
  end
end

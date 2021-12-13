require 'rails_helper'

RSpec.describe 'Items Index' do
  before :each do
    @merchant_1 = Merchant.create({name: 'Bobs Burgers'})
    @merchant_2 = Merchant.create({name: 'Jimmy Pestos Pizza'})
    @item_1 = @merchant_1.items.create({name: 'Burger of the Day', description: 'Tasty burger of the day, themed with ingredients', unit_price: 5.99})
    @item_2 = @merchant_1.items.create({name: 'Cheeseburger Combo', description: 'Tasty burger with cheese and fries', unit_price: 7.99})
    @item_3 = @merchant_2.items.create({name: 'Jimmys Jumbo Pizza', description: 'A pizza big enough for any occasion', unit_price: 14.99})
  end

  it 'displays a list of items by name' do
    visit '/items'

    expect(page).to have_link(@item_1.name)
    expect(page).to have_link(@item_2.name)
    expect(page).to have_link(@item_3.name)
  end
end

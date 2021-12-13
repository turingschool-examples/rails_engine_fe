require 'rails_helper'

RSpec.describe 'Merchant Show Page' do
  before :each do
    @merchant_1 = Merchant.create({name: 'Bobs Burgers'})
    @merchant_2 = Merchant.create({name: 'Jimmy Pestos Pizza'})
    @item_1 = @merchant_1.items.create({name: 'Burger of the Day', description: 'Tasty burger of the day, themed with ingredients', unit_price: 5.99})
    @item_2 = @merchant_1.items.create({name: 'Cheeseburger Combo', description: 'Tasty burger with cheese and fries', unit_price: 7.99})
    @item_3 = @merchant_2.items.create({name: 'Jimmys Jumbo Pizza', description: 'A pizza big enough for any occasion', unit_price: 14.99})
  end

  it 'displays a merchants name and items' do
    visit "/merchant/#{@merchant_1.id}"

    expect(page).to have_content(@merchant_1.name)
    within("#item-#{@item_1.id}") do
      expect(page).to have_link(@item_1.name)
    end
    expect(page).to_not have_content(@item_3.name)
  end

  it 'links to the items show page' do
    visit "/merchant/#{@merchant_1.id}"

    within("#item-#{@item_1.id}") do
      click_link(@item_1.name)
    end
    expect(current_path).to eq("/item/#{@item_1.id}")
  end
end

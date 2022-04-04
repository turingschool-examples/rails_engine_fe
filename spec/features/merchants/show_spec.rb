require 'rails_helper'

RSpec.describe 'merchant show page' do

  it "merchant show page shows all items" do
    merchant = Merchant.create!(name: 'Dunder Miflin')

    item_1 = Item.create!(name: "item 1", description: "soft", unit_price: 21.99, merchant_id: merchant.id)
    item_2 = Item.create!(name: "item 2", description: "hard", unit_price: 22.99, merchant_id: merchant.id)
    item_3 = Item.create!(name: "item 3", description: "rubbbery", unit_price: 23.99, merchant_id: merchant.id)
    item_4 = Item.create!(name: "item 4", description: "silky", unit_price: 24.99, merchant_id: merchant.id)

    visit "/merchants/#{merchant.id}"

    expect(page).to have_content("#{item_1.name}")
    expect(page).to have_content("#{item_2.name}")
    expect(page).to have_content("#{item_3.name}")
    expect(page).to have_content("#{item_4.name}")
  end
end

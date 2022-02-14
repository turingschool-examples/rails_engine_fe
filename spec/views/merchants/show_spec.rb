require 'rails_helper'

RSpec.describe 'the merchant show page' do
  it 'displays the merchant id' do
    merchant = MerchantFacade.all_merchants.first
    visit "/merchants/#{merchant.id}"

    within('#merchant-header') do
      expect(page).to have_content("Merchant id: #{merchant.id}")
    end
  end

  it 'displays items for a given merchant' do
    item_names = ["Item Nemo Facere", "Item Expedita Aliquam", "Item Provident At", "Item Expedita Fuga", "Item Est Consequuntur", "Item Quo Magnam", "Item Quidem Suscipit", "Item Rerum Magni", "Item Et Cumque", "Item Voluptatem Sint", "Item Itaque Consequatur", "Item Rerum Est", "Item Qui Esse", "Item Autem Minima", "Item Ea Voluptatum"]
    visit "/merchants/#{MerchantFacade.all_merchants.first.id}"

    item_names.each do |name|
      expect(page).to have_content(name)
    end
  end

  it 'can link to an items show page' do
    merchant = MerchantFacade.all_merchants.first
    items = ItemFacade.find_items(merchant.id.to_s)

    visit "/merchants/#{merchant.id}"

    click_link "#{items.first.name}"

    expect(current_path).to eq("/items/#{items.first.id}")
  end
end

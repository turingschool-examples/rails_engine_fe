require 'rails_helper'

RSpec.describe 'Merchant Index' do
  before :each do
    @merchant_1 = Merchant.create({name: 'Bobs Burgers'})
    @merchant_2 = Merchant.create({name: 'Jimmy Pestos Pizza'})
    @merchant_3 = Merchant.create({name: 'Teddys Handyman Service'})
    @merchant_4 = Merchant.create({name: 'Annie Get Your Gum'})
  end

  it 'displays a list of merchants' do
    visit '/merchants'

    expect(page).to have_link(@merchant_1.name)
    expect(page).to have_link(@merchant_2.name)
    expect(page).to have_link(@merchant_3.name)
    expect(page).to have_link(@merchant_4.name)
  end

  it 'links to a merchants show page from index' do
    visit '/merchants'

    within("#merchant-#{@merchant_1.id}") do
      click_link("Bobs Burgers")
      expect(current_path).to eq("/merchant/#{@merchant_1.id}")
    end
  end
end

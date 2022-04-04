require 'rails_helper'

RSpec.describe 'merchant index page' do

  it "lists all the merchants" do
    create_list(:merchant, 5)

    visit '/merchants'

    merchant = Merchant.last

    expect(Merchant.count).to eq(5)

    expect(page).to have_content("#{merchant.name}")
  end

  it "name links to it's show page" do
    create_list(:merchant, 5)

    visit '/merchants'

    merchant = Merchant.last

    click_on("#{merchant.name}")

    expect(current_path).to eq("/merchants/#{merchant.id}")
  end
end

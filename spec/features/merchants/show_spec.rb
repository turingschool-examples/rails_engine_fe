require 'rails_helper'

RSpec.describe 'Merchant Show Page', type: :feature do
  it "shows the merchant's name" do
    visit "/merchants/3"
    expect(page).to have_content("Willms and Sons")
  end 

  it "shows items belonging to the merchant" do
    visit "/merchants/3"
    expect(page).to have_content("Item Iusto Atque")
    expect(page).to have_content("538.98")
  end

  it "has a link to each item's show page" do
    visit "/merchants/3"
    click_link("Item Iusto Atque")
    expect(current_path).to eq("/items/56")
  end
end

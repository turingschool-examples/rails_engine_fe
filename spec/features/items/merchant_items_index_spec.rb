require 'rails_helper'

RSpec.describe 'Merchant Items Index Page', type: :feature do
  it "lists every item belonging to a merchant" do
    visit "/merchants/3/items"

    expect(page).to have_content("Item Enim Error")
    expect(page).to have_content("Item Delectus Dolorem")
    expect(page).to have_content("Item Iusto Atque")
    expect(page).to have_content("Item Et Reiciendis")
  end
 
  it "links to each item's show page" do
    visit "/merchants/3/items"

    click_link("Item Iusto Atque")
    expect(current_path).to eq("/items/56")
  end
end

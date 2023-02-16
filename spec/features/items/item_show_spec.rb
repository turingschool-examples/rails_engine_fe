require 'rails_helper'

RSpec.describe "Item show" do
  it 'an items show page will list a description and unit price' do
    visit "/items/45"

    expect(page).to have_content("Item Id Aut")
    expect(page).to have_content("Description: Blanditiis alias cupiditate dolores. Cum architecto est magnam similique quis culpa est. Incidunt consequatur sunt maxime veritatis labore officia. Quaerat nemo molestias et omnis quia.")
    expect(page).to have_content("Unit price: $318.76")
  end
end
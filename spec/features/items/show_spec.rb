require 'rails_helper'

RSpec.describe 'Items Show Page', type: :feature do
  it "shows all the details of an item" do
    visit "/items/56"

    expect(page).to have_content("Item Iusto Atque")
    expect(page).to have_content("Voluptas repellat voluptas")
    expect(page).to have_content("538.98")
    # expect(page).to have_content("Willms and Sons")
  end
end

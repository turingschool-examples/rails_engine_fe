require 'rails_helper'

RSpec.describe "Merchants Show Page" do
  it "displays a merchant and their items by id" do
    visit (merchant_path(4))

    expect(page).to have_content("Cummings-Thiel")
    expect(page).to have_content("Item In Sed")
    expect(page).to have_content("Item Voluptate Quo")
  end
end

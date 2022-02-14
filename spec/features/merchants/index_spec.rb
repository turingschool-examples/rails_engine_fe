require 'rails_helper'

RSpec.describe "Merchant Index Page" do
  it "displays a list of merchants" do
    visit merchants_path

    expect(page).to have_content("Merchants")
    expect(page).to have_link("Schroeder-Jerde")
    expect(page).to have_link("Cummings-Thiel")

    click_link "Cummings-Thiel"

    expect(current_path).to eq(merchant_path(4))
  end
end

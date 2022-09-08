require "rails_helper"

RSpec.describe "Merchant show page" do
  it "merchants name should link to merchants show page" do
   
    visit merchants_path
    click_on "Hand-Spencer"

    expect(current_path).to eq("/merchants/9")
    expect(page).to have_content("Hand-Spencer")
    expect(page).to have_content("Items:")
    expect(page).to_not have_content("Schroeder-Jerde")
  end
end
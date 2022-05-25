require "rails_helper"

describe "Merchant index" do
  before do
    visit "/merchants"
  end

  it "shows a list of all merchants", :vcr do
    expect(page).to have_link("Boehm LLC")
    expect(page).to have_link("Heaney Group")
    expect(page).to have_link("Sipes LLC")
  end

  it "has links to merchant show pages", :vcr do
    click_link "Boehm LLC"

    expect(current_path).to eq("/merchants/94")
  end
end

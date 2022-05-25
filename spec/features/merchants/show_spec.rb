require "rails_helper"

describe "Merchant show" do
  before do
    visit "/merchants/94"
  end
  it "displays all of a merchants items", :vcr do
    expect(page).to have_content("Item Non Dolor")
    expect(page).to have_content("Item Corrupti Suscipit")
    expect(page).to have_content("Item Quidem Et")
  end
end

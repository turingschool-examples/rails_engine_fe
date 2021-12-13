require 'rails_helper'

RSpec.describe "Merchants Index Page" do
  before :each do
    @merchant = Merchant.create!(name: "Bob Belcher")
    @merchant2 = Merchant.create!(name: "Linda Belcher")
    @merchant4 = Merchant.create!(name: "Jimmy Pesto")
  end

  it "shows all merchants by name" do
    visit "/merchants"

    expect(page).to have_content(@merchant.name)
    expect(page).to have_content(@merchant2.name)
    expect(page).to have_content(@merchant3.name)
  end

  xit "has links to the merchant show page" do
  end
end

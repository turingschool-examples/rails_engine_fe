require "rails_helper"

RSpec.describe "Merchant index page" do
  it "shows a list of merchant names as links" do
    visit "/merchants"
    expect(page).to have_link("Schroeder-Jerde")
    expect(page).to have_link("Klein, Rempel and Jones")
    expect(page).to have_link("Willms and Sons")
  end
end

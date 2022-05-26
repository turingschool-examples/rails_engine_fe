require 'rails_helper'

RSpec.describe "merchants index page" do

  it "exists and returns a valid HTML document" do
    visit "/merchants"
    expect(page).to have_content "All The Merchants"
    expect(page).to have_content "Schroeder-Jerde"
    expect(page).to have_content "Glover Inc"
    expect(page).to have_content "Found 100 Results"
  end

end

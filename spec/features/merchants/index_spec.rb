require 'rails_helper'

RSpec.describe "Merchants Index", :vcr do 
  it "has a list of all the Merchants names" do 
    visit "/merchants"
    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content(1)
  end

  it "links to each merchant's show page", :vcr do 
    
    visit "/merchants"

    expect(page).to have_link("Schroeder-Jerde")
  end
end
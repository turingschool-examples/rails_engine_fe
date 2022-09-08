require 'rails_helper'

RSpec.describe "Merchants Index", :vcr do 
  it "has a list of all the Merchants names" do 
    visit "/merchants"

    expect(page).to have_content("Schroeder-Jerde")
  end
end
require 'rails_helper'

RSpec.describe "Merchant show page", type: :feature do 

  it "has all of a merchant's items" do 
    visit "/merchants/1"
  
    within ".item-4" do
      expect(page).to have_link("Item 4")
    end

    within ".item-2500" do 
      expect(page).to have_link("Item 2500")
    end

    expect(page).to have_css("div", count: 15 )

    click_link "Item 4"

    expect(current_path).to eq('/items/4')
  end
end

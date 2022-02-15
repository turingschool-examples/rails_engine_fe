require 'rails_helper'

RSpec.describe "Items Index page", type: :feature do 

  it "has all the items" do 

    visit "/items"
    # save_and_open_page

    within ".item-4" do
      expect(page).to have_link("Item Nemo Facere")
    end

    within ".item-210" do
      expect(page).to have_link("Item Aut Sit")
    end

    click_link("Item Nemo Facere")
    expect(current_path).to eq("/items/4")
  end

end

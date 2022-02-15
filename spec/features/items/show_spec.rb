require 'rails_helper'

RSpec.describe "Item show page", type: :feature do 

  it "has all of a merchant's items" do 
    visit "/items/4"
  
    expect(page).to have_content("Item: Item Nemo Facere")
    expect(page).to have_content("Item ID: 4")
    expect(page).to have_content("Item Description: Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
    expect(page).to have_content("Merchant ID: 1")
  end
end

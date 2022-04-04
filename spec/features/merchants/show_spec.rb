require 'rails_helper' 

RSpec.describe "Merchants Show Page" do 

it "displays list of merchant's items" do 
    visit "/merchants"
    click_on("Hand-Spencer")

    expect(current_path).to eq("/merchants/9")
    expect(page).to have_content("Hand-Spencer")
    expect(page).to have_content("Item Qui Veritatis")
  end 
end 
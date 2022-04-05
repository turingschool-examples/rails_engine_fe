require 'rails_helper' 

RSpec.describe "Merchants Index Page" do 
  
  it "displays a list of merchant names as links to show page" do 
    visit "/merchants"

    expect(page).to have_link("Schroeder-Jerde")
    expect(page).to have_link("Klein, Rempel and Jones")
    expect(page).to have_link("Willms and Sons")
  end 

  it "takes user to merchant show page when merchant name clicked" do 
    visit "/merchants"
    click_on("Schroeder-Jerde")
    expect(current_path).to eq("/merchants/1")
  end 
end 
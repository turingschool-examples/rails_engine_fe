require 'rails_helper' 

RSpec.describe "Merchants Index Page" do 
  before(:each) do
    @merchant = create(:merchant)
    @merchant2 = create(:merchant)
    @merchant3 = create(:merchant)

    visit "/merchants"
  end

  it "displays a list of merchant names as links to show page" do 


    expect(page).to have_link(@merchant.name)
    expect(page).to have_link(@merchant2.name)
    expect(page).to have_link(@merchant3.name)
  end 
end 
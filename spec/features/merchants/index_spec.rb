require 'rails_helper'

RSpec.describe 'Merchants Index' do

  before do
    visit '/merchants'
  end

  it 'displays a list of merchants by name' do
    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Klein, Rempel and Jones")
    expect(page).to have_content("Willms and Sons")
  end  
  
  it "merchant's name links to their show page" do
    click_link "Schroeder-Jerde"

    expect(current_path).to eq("/merchants/1")
  end
end
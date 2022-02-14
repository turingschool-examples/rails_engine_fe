require 'rails_helper'

RSpec.describe 'merchant show page' do
  before(:each) do
    visit '/merchants/1'
  end

  it 'shows merchant name' do
    expect(page).to have_content("Schroeder-Jerde")
  end

  it 'lists all merchant items' do
    expect(page).to have_css('a', count: 15)
  end

  it 'links to each item show page' do
    click_link("Item Nemo Facere")
    expect(current_path).to eq("/items/4")
  end
end 

require 'rails_helper'

RSpec.describe 'Item show page' do
  before(:each) do
    visit '/items/2471'
  end

  it "has an item's attributes" do
    expect(page).to have_content('Item Illum Excepturi')
    expect(page).to have_content('6.57')
    expect(page).to have_content('Placeat ut saepe quaerat error ipsum rerum laborum. Quos et in. Vel exercitationem sed occaecati libero.')
  end
end
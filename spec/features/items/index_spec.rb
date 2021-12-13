require 'rails_helper'

RSpec.describe 'Items index' do
  before(:each) do
    visit '/items'
  end

  it 'has a list of all the items' do
    # first item
    expect(page).to have_content('Item Nemo Facere')
    # last item
    expect(page).to have_content('Item Qui Veritatis')
  end

  it 'has links to item show page' do
    click_link 'Item Illum Excepturi'
    expect(current_path).to eq('/items/2471')
  end
end
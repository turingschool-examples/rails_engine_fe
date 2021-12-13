require 'rails_helper'

RSpec.describe 'Items Index' do
  before(:each) do
    visit items_path
  end

  it 'shows a list of linked item names' do
    expect(page).to have_content('Items Index')
    expect(page).to have_link('Item Nemo Facere')

    click_link('Item Nemo Facere')

    expect(current_path).to eq(item_path(4))
  end
end

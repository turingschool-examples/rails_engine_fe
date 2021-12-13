require 'rails_helper'

RSpec.describe 'Item Index Page' do
  it 'displays the names of all the items' do
    visit items_path

    expect(page).to have_link('Item Nemo Facere')
    expect(page).to have_link('Item Qui Veritatis')
  end

  it 'has links to the items show page' do
    visit items_path
    item = ItemFacade.items_index.first
    click_link 'Item Nemo Facere'

    expect(current_path).to eq(item_path(item.item_id))
  end
end
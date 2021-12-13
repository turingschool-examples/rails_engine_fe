require 'rails_helper'

RSpec.describe 'Item Show Page' do
  let!(:item) { ItemFacade.items_index.first }

  before do
    visit item_path(item.item_id)
  end

  it 'displays the items name' do
    expect(page).to have_content("Item Nemo Facere")
  end
  
  it 'displays the items description' do
    expect(page).to have_content("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
  end

  it 'displays the items unit price' do
    expect(page).to have_content('42.91')
  end
end
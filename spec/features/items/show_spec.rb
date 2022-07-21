require 'rails_helper'

RSpec.describe 'item show page' do 
  let!(:item) { ItemFacade.get_item(4) }
  it 'has items attributes' do 
    visit item_path(item.id)
    
    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
    expect(page).to have_content(42.91)
  end
end
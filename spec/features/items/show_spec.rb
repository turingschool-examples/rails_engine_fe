require 'rails_helper'

RSpec.describe 'Item show page' do
  it 'can return an item details', :vcr do
    visit item_path(4)

    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
    expect(page).to have_content(42.91)
  end
end
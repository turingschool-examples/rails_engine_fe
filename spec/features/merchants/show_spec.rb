require 'rails_helper'

RSpec.describe 'merchant show page' do 
  let!(:id) { 1 }
  let!(:items) { ItemFacade.merchant_items(1) }
  it 'shows list of items that merchant sells' do 
    visit merchant_path(id)

    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Item Expedita Aliquam")
    expect(page).to have_content("Item Provident At")
    expect(page).to have_content("Item Expedita Fuga")
  end
end
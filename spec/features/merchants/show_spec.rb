require 'rails_helper'

RSpec.describe 'Merchant Show Page' do
  it 'displays the merchant name and their items' do
    visit '/merchants/1'

    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Schroeder-Jerde's Items")
    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Price: 42.91")
  end
end 

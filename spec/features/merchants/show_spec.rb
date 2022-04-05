require 'rails_helper'

RSpec.describe 'Merchant Index' do
  it ' returns a list of merchants by name' do
    visit "/merchants/1"

    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content(42.91)
  end
end
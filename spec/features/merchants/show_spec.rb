require 'rails_helper'

RSpec.describe 'Merchants show page' do
  it "displays a list of all a merchant's items", :vcr do 
    visit merchant_path(1)
    expect(page).to have_content('Item Nemo Facere')
  end
end
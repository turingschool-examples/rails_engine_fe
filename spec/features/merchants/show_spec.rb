require 'rails_helper'

RSpec.describe 'Merchant show page' do
  before(:each) do
    visit '/merchants/1'
  end

  it "has a merchant's name" do
    expect(page).to have_content('Schroeder-Jerde')
  end

  it "has a merchant's items" do
    expect(page).to have_content('Item Nemo Facere')
    expect(page).to have_content('Item Expedita Aliquam')
    expect(page).to have_content('Item Provident At')
  end
end
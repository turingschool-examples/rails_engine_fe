require 'rails_helper'

RSpec.describe 'Show Merchant', type: :feature do

  before :each do
    visit merchant_path(42)
  end

  it 'Has merchant name and list of merchant items' do
    expect(page).to have_content("Glover Inc")

    within("#items") do
      expect(page).to have_content("Item Debitis Officiis")
      expect(page).to have_content("Item Accusantium Quasi")
    end
  end
end
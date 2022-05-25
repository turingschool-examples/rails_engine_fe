require 'rails_helper'

RSpec.describe 'Merchants Index', type: :feature do

  before :each do
    visit merchants_path
  end

  it 'retrieves all merchants from api' do
    within("#merchants") do
      expect(page).to have_link(href: merchant_path(1))
      expect(page).to have_link(href: merchant_path(100))
    end
  end
end
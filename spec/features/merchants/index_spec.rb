require 'rails_helper'

RSpec.describe 'merchants index page' do
  before(:each) do
    visit '/merchants'
  end

  it 'shows all merchants' do
    expect(page).to have_css('a', count: 100)
  end

  it 'links to each merchant show page' do
    merchant_id = ((1..100).to_a.sample)
    within("#merchant-id-#{merchant_id}") do
      first(:link).click
      expect(current_path).to eq("/merchants/#{merchant_id}")
    end
  end
end

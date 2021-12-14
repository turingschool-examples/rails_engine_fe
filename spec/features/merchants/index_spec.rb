# frozen_string_literal: true

require 'rails_helper'
# FactoryBot.find_definitions

RSpec.describe 'Merchants Index Page' do

  it 'lists merchants' do
    data = Faraday.new('http://api/v1/merchants')
    visit '/merchants'

    expect(page).to have_link("#{merchant_1.name}")
    expect(page).to have_link("#{merchant_2.name}")
    click_link("#{merchant_1.name}")
    expect(current_path).to eq("/merchants/#{merchant_1.id}")
  end
end

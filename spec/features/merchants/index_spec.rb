# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'merchants index page', :vcr do
  it 'has a list of merchants by name' do
    visit "/merchants"

    expect(page).to have_link('Schroeder-Jerde')
    expect(page).to have_link('Klein, Rempel and Jones')
    expect(page).to have_link('Willms and Sons')
  end

  it 'each merchant name links to the merchant show page' do
    visit "/merchants"

    click_on('Schroeder-Jerde')
    expect(page).to have_content('Schroeder-Jerde')
    expect(current_path).to eq('/mercahnts/1')
  end
end
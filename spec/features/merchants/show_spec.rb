# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'merchants show page', :vcr do
  it 'has a list of the merchants items' do
    visit "/merchants/1"

    expect(page).to have_content('Schroeder-Jerde')
    expect(page).to have_content('Klein, Rempel and Jones')
    expect(page).to have_content('Willms and Sons')
  end
end
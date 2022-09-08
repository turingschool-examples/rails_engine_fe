# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'user merchants index page', :vcr do
  it 'has a list of merchants by name' do
    visit "/merchants"

    expect(page).to have_link('Top Movies')
    expect(page).to have_link('Shawshank Redemption')
    expect(page).to have_no_content('Paul Blart')
    expect(page).to have_no_content('Movie results for: ')
  end
end
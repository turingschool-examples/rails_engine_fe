require 'rails_helper'

RSpec.describe 'Welcome Page' do
  it 'has a search field to find merchants' do
    visit root_path

    fill_in: :search, with: 'Bernhard'
    click_button :submit

    expect(page).to have_content('Bernhard-Johns')
  end
end
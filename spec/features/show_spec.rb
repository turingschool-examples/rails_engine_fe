require 'rails_helper'
RSpec.describe 'merchants show' do
  it 'shows a merchants' do
    visit '/merchants/1'

    expect(page).to have_content('Schroeder-Jerde')
    expect(page).to have_content('Items')
  end
end

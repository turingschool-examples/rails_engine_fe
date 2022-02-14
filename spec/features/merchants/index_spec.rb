require 'rails_helper'

RSpec.describe 'Merchant index' do
  it 'can show all merchants' do
    visit '/merchants'
    save_and_open_page
    # expect(page).to have_content()
  end
 end

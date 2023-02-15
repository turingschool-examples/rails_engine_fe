require 'rails_helper'

RSpec.describe 'merchants index page' do
  it 'displays all merchants' do
    visit merchants_path

    expect(page).to have_content('Merchants')
  end
  
end
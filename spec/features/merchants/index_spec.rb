require 'rails_helper'

RSpec.describe 'merchants index' do
  it 'shows a list of merchants' do
    visit '/merchants'

    expect(page).to have_content('Merchants')
  end
end

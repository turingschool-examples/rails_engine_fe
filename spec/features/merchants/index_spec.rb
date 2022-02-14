require 'rails_helper'
RSpec.describe 'merchants index page' do
  it 'has a list of all merchants by name, names are links to show page' do
    VCR.use_cassette('mercahnts_index') do
      visit '/merchants'

      expect(page).to have_content("Name: Schroeder-Jerde")
      expect(page).to have_link("Schroeder-Jerde")
      click_link("Schroeder-Jerde")
      expect(current_path).to eq("/merchants/1")
    end
  end
end

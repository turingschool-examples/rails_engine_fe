require 'rails_helper'
RSpec.describe 'merchants index' do
  it "shows a list of merchants" do
    VCR.use_cassette('merchants_index') do
      visit '/merchants'
      expect(page).to have_link("Schroeder-Jerde")
      click_link("Schroeder-Jerde")
      expect(current_path).to eq("/merchants/1")
    end
  end
end

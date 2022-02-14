require 'rails_helper'

RSpec.describe 'Home/Search Page' do
  describe 'when I land on the root page' do
    xit 'has a box where I can search by merchant' do
      visit "/"

      fill_in "Search Merchants", with: "iLl"
      click_button "Submit"

      expect(page.status_code).to eq 200
    end
  end
end

require 'rails_helper'

RSpec.describe 'Merchants Index Page', type: :feature do
  before do
    visit merchants_path
  end

  describe 'the merchants index page' do
    it 'shows a list of merchants by name' do
      within '#merchants' do
        expect(page).to have_content('Schroeder-Jerde')
        expect(page).to have_content('Kozey Group')
      end
    end

    it 'when I click on a merchants name I am taken to their show page' do
      click_on 'Schroeder-Jerde'

      expect(current_path).to eq(merchant_path(1))
    end

    it 'I see a search bar and can search all merchants by a name fragment' do
      fill_in :search, with: 'hand'
      click_on 'Submit'

      expect(current_path).to eq(merchants_path)

      expect(page).to have_content("Merchants matching 'hand'")

      within '#merchants' do
        expect(page).to have_content('Hand-Spencer')
        expect(page).to have_content('Hand, Boyer and Mitchell')
      end 

      expect(page).to_not have_content('Schroeder-Jerde')
      expect(page).to_not have_content('Kozey Group')
    end

    it 'gives an error message if user tries searching with an empty text field' do
      fill_in :search, with: ''
      click_on 'Submit'

      expect(page).to have_content('Text field must be filled in')
    end
  end
end
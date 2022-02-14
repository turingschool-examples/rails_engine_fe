require 'rails_helper'

RSpec.describe 'Merchant index page' do
  describe 'home page link' do
    it 'displays list of merchants as links' do
      visit "/merchants"
      save_and_open_page
      expect(page).to have_link("Schroeder-Jerde")

    end
  end
end

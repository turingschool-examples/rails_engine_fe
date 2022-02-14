require 'rails_helper'

RSpec.describe 'Merchant index page' do
  describe 'home page link' do
    it 'displays list of merchants as links' do
      visit "/merchants"


      expect(page).to have_content("Schroeder-Jerde")

    end
  end
end

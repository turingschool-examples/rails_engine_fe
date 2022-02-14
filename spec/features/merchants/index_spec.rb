require 'rails_helper'

RSpec.describe 'Merchants Index Page' do
  describe 'when I visit the merchants index page' do
    it 'displays a list of merchants by name' do
      visit '/merchants'

      expect(page.status_code).to eq 200
    end
  end
end

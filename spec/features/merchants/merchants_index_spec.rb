require 'rails_helper'

RSpec.describe 'merchants index', type: :feature do
  xdescribe 'visiting /merchants' do
    it 'see list of merchants by name' do
      visit '/merchants'

      expect(page).to have_content(Merchant.first.name)
      expect(page).to have_content(Merchant.second.name)
    end

    it 'when a merchants name is clicked the user should be directed to /merchants/:id 
    and they should see a list of items that merchant sells'
  end
end
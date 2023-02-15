require 'rails_helper'

RSpec.describe 'welcome index page' do
  describe 'landing page' do
    it 'has links to the merchants index and items index' do
      visit root_path
save_and_open_page
      expect(page).to have_link('See All Items', href: items_path)
      expect(page).to have_link('See All Merchants', href: merchants_path)
    end
  end
  
end
require 'rails_helper'

RSpec.describe 'Landing Page' do
  context 'As a visitor' do
    context 'when I visit the app landing page' do
      before { visit '/' }

      scenario 'I am at the root directory' do
        expect(page).to have_current_path('/')
      end

      scenario 'I see a form to search merchants' do
        expect(page).to have_field(:search)
        expect(page).to have_button('Search')
      end

      scenario 'When I submit the form, a single merchant name appears and links to the merchant show page' do
        expect(page).not_to have_css('#merchant-1')
        expect(page).not_to have_content('Merchant Items')

        fill_in :search, with: 'ada'
        click_button 'Search'

        within '#merchant-1' do
          first(:link).click
        end

        expect(page).to have_content('Merchant Items')
      end
    end
  end
end

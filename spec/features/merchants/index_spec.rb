require 'rails_helper'

RSpec.describe 'Merchant Index Page', type: :feature do

  context 'As a visitor' do
    context 'when I visit /merchants' do
      before(:each) do
        visit '/merchants'
      end

      scenario 'I see list of merchants by name' do
        expect(page).to have_current_path(merchants_path)

        expect(page).to have_css('#merchant-1')
        expect(page).to have_css('#merchant-2')
      end

      scenario 'I click merchant name and I am redirected to their show page where I see a list of merchant items' do
        within "#merchant-1" do
          first(:link).click
        end

        expect(page).to have_content('Merchant Items:')

        within '#merchant-items' do
          expect(page).to have_css('#item-1')
          expect(page).to have_css('#item-2')
        end
      end
    end
  end
end

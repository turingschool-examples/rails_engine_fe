# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Items | Show', :vcr, type: :feature do
  describe 'As a visitor, when I visit /items/:id;' do
    before(:each) { visit item_path(4) }
    it 'I should see the name of the item, description, and unit price.' do
      expect(page).to have_content 'Item Nemo Facere'
      expect(page).to have_content 'Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.'
      expect(page).to have_content '42.91'
    end
  end
end

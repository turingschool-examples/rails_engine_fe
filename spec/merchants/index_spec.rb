require 'rails_helper'

RSpec.describe "merchants index page", type: :feature do
    it 'has a list of merchants' do
        visit "/merchants"

        expect(page).to have_content("Merchants")
    end 
end 
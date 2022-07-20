require 'rails_helper'

describe 'Merchant index API page' do

    it 'displays each merchant by name' do
        visit '/merchants'

        expect(page).to have_content('Merchants')

        within "#merchant-1" do
            expect(page).to have_link("Matt Tracy")
        end

        within "#merchant-2" do
            expect(page).to have_link("Ryan Demeter")
        end

        within "#merchant-3" do
            expect(page).to have_link("Tyler Rock")
        end
    end

    it 'has a link to a merchants show page fro the index' do
        visit '/merchants'
    end
end
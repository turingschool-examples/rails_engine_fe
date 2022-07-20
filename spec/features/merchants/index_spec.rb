require 'rails_helper'

describe 'Merchant index API page', :vcr do

    it 'displays each merchant by name', :vcr do
        visit '/merchants'

        expect(page).to have_content('Merchants')


        within "#merchant-1" do
            expect(page).to have_link("Schroeder-Jerde")
        end

        within "#merchant-2" do
            expect(page).to have_link("Klein, Rempel and Jones")
        end

        within "#merchant-3" do
            expect(page).to have_link("Willms and Sons")
        end
    end

    xit 'has a link to a merchants show page fro the index', :vcr do
        visit '/merchants'

        click_on 'Willms and Sons'

        expect(current_path).to eq('/merchants/3')

        expect(page).to have_content
    end
end
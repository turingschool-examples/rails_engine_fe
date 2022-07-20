require 'rails_helper'

describe 'Merchant API Show page' do
    it 'lists the items of each merchant' do
        visit '/merchants/1'

        expect(page).to have_content("Schroeder-Jerde Merchant Page")
        within 'item-1' do
            expect(page).to have_content("Zingers")
        end
        within 'item-2' do
            expect(page).to have_content("Swirlers")
        end
        within 'item-3' do
            expect(page).to have_content("Bombers")
        end
    end
end

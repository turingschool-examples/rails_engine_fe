require 'rails_helper'

describe 'Merchant API Show page' do
    it 'lists the items of each merchant' do
        visit '/merchants/1'

        expect(page).to have_content("Schroeder-Jerde Merchant Page")
        
        within '#item-4' do
            expect(page).to have_content("Item Nemo Facere")
            expect(page).to have_content("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
            expect(page).to have_content("42.91")
        end
        within '#item-5' do
            expect(page).to have_content("Item Expedita Aliquam")
            expect(page).to have_content("Voluptate aut labore qui illum tempore eius. Corrupti cum et rerum. Enim illum labore voluptatem dicta consequatur. Consequatur sunt consequuntur ut officiis.")
            expect(page).to have_content("687.23")
        end
        within '#item-6' do
            expect(page).to have_content("Item Provident At")
            expect(page).to have_content("Numquam officiis reprehenderit eum ratione neque tenetur. Officia aut repudiandae eum at ipsum doloribus. Iure minus itaque similique. Ratione dicta alias asperiores minima ducimus nesciunt at.")
            expect(page).to have_content("159.25")
        end
    end
end

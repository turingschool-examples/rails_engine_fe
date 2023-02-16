require 'rails_helper'

RSpec.describe 'merchants index', type: :feature do
  describe 'visiting /merchants' do
    it 'see list of merchants by name' do
      visit '/merchants'

      within "#merchants" do
        expect(page).to have_content("Schroeder-Jerde")
        expect(page).to have_content("Klein, Rempel and Jones")
      end
    end

    it 'when a merchants name is clicked the user should be directed to /merchants/:id 
    and they should see a list of items that merchant sells' do
      visit '/merchants'

      click_link 'Schroeder-Jerde'

      expect(current_path).to eq('/merchants/1')
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Expedita Aliquam")
      expect(page).to have_content("Item Provident At")
      expect(page).to have_content("Item Expedita Fuga")
      expect(page).to have_content("Item Est Consequuntur")
    end
  end
end
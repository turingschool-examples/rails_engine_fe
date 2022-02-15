require 'rails_helper'

RSpec.describe "merchant index page" do 

  before :each do 
    visit "/merchants"
  end 

  describe 'when i visit the index page' do 
    it 'should have a list of all merchants by name' do 
      expect(page).to have_content('Schroeder-Jerde')

      click_on "Schroeder-Jerde"
      expect(current_path).to eq("/merchants/1")
      expect(page).to have_content('Schroeder-Jerde')

      expect(page).to have_content('Item')
    end 
  end 

  describe 'merchants show page' do 

  end 
end 
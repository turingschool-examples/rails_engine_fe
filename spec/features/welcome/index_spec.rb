require 'rails_helper'

RSpec.describe 'Welcome Page' do
  describe 'has a link to Merchants Index' do
    it 'has link that takes me to Merchants Index' do
      visit root_path
      expect(current_path).to eq(root_path)

      expect(page).to have_button("Merchants")
      click_on "Merchants"
      expect(current_path).to eq(merchants_path)
    end
  end

  describe 'has a link to Items Index' do
    it 'has link that takes me to Itemss Index' do
      visit root_path
      expect(current_path).to eq(root_path)

      expect(page).to have_button("Items")
      click_on "Items"
      expect(current_path).to eq(items_path)
    end
  end
end

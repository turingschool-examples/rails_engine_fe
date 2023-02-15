require 'rails_helper'

RSpec.describe 'welcome index page' do
  describe 'landing page' do
    it 'has links to the merchants index and items index' do
      visit root_path

      expect(page).to have_link('See All Items', href: items_path)
      expect(page).to have_link('See All Merchants', href: merchants_path)
    end
  end
  
  describe 'searching for merchants on the landing page' do
    before(:each) do
      stub_request(:get, 'http://localhost:3000/api/v1/merchants/find_all?name=iLl')
        .to_return(status: 200, body: File.read('spec/fixtures/merchant_query_iLl.json'))
    end

    it 'returns a list of merchants that have partial string match of query' do
      visit root_path

      fill_in :q, with: 'iLl'
      click_button 'Find Merchants'

      expect(current_path).to eq(root_path)
      expect(page).to have_content("Willms and Sons")
      expect(page).to have_content("Williamson Group").twice
      expect(page).to have_content("Tillman Group")
      expect(page).to have_content("Schiller, Barrows and Parker")
    end
  end
end
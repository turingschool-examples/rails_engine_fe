require 'rails_helper'

RSpec.describe 'Merchants Index Page' do
  before(:each) do

    merchants_json = File.read('./spec/fixtures/merchants.json')
    stub_request(:get, "http://localhost:3000/api/v1/merchants").
         to_return(status: 200, body: merchants_json, headers: {})

    visit '/merchants'
  end

  it 'lists links to each merchant' do
    expect(page).to have_link("Schroeder-Jerde") # id 1
    expect(page).to have_link("Willms and Sons") # id 3
    expect(page).to have_link("Fahey-Stiedemann") # id 99
  end

  context 'takes you to correct path when clicking a merchant link' do
    it 'link id-1' do
      click_on("Schroeder-Jerde")
      expect(current_path).to eq("/merchants/1")
    end
    it 'link id-3' do
      click_on("Willms and Sons")
      expect(current_path).to eq("/merchants/3")
    end
    it 'link id-99' do
      click_on("Fahey-Stiedemann")
      expect(current_path).to eq("/merchants/99")
    end
  end

end

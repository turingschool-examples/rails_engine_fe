require 'rails_helper'

# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.



RSpec.describe 'Merchants index page' do
  before(:each) do
    # merchants = Faraday.get "http://localhost:3000/api/v1/merchants"
    
    visit '/merchants'
  end

  it 'has a list of merchants by name' do
    #first merchant
    expect(page).to have_content('Schroeder-Jerde')
    #last merchant
    expect(page).to have_content('Fahey-Stiedemann')
  end

  it "when I click the merchant's name I should be on merchant show page" do
    click_link 'Fahey-Stiedemann'

    expect(current_path).to eq('/merchants/99')
  end
end
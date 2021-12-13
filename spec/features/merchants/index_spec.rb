require 'rails_helper'

RSpec.describe 'Merchants index page' do
  before(:each) do
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
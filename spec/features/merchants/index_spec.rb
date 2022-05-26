require 'rails_helper'

RSpec.describe 'the merchant index' do
  it 'displays a list of merchants', :vcr do

    visit '/merchants'

    click_link "Schroeder-Jerde"
    expect(current_path).to eq("/merchants/1")
  end
end

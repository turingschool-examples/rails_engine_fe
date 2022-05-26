require 'rails_helper'

RSpec.describe 'The Merchants index page' do
  before :each do
    stub_merchant_index
    visit '/merchants'
  end

  it 'displays a list of all merchant names' do
    expect(page).to have_css('.merchant', count: 15)
    expect(page).to have_content 'Schroeder-Jerde'
    expect(page).to have_content 'Klein, Rempel and Jones'
    expect(page).to have_content 'Willms and Sons'
  end

  it 'each name is a link to the merchant show page' do
    stub_merchant_show

    click_on 'Schroeder-Jerde'

    expect(current_path).to eq '/merchants/1'
  end
end

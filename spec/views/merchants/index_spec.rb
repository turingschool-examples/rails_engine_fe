require 'rails_helper'

RSpec.describe 'the merchants index page' do

  before :each do
    @merchants = MerchantFacade.all_merchants
  end

  it 'displays all merchants' do
    visit '/merchants'

    @merchants.each do |m|
      expect(page).to have_content(m.name)
    end
  end

  it 'links to merchant show page' do
    visit '/merchants'
    click_link "#{@merchants.first.name}"

    expect(current_path).to eq("/merchants/#{@merchants.first.id}")
  end
end

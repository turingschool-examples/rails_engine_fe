require 'rails_helper'

RSpec.describe 'merchant index page' do
  describe 'showing merchants', :vcr do
    let!(:merchants) { create_list :merchant, 5 }

    it 'lists all merchants by name' do
      merchants = create :merchant
      visit '/merchants'
save_and_open_page
      merchants.each do |merchant|
        expect(page).to have_content(merchant.name)
      end
    end

    xit 'has a link to merchants show page' do
      visit merchants_path
      # <h4> <%= link_to merchant.name, merchants_path(merchant.id) %></h4>
      merchants.each do |merchant|
        expect(page).to have_content(merchant.name)
        expect(page).to have_link(merchant.name)
        click 'merchant.name'
        expect(current_path).to eq(merchant_path(@merchant.id))
      end
    end
  end
end


# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.

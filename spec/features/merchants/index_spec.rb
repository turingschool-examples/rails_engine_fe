require 'rails_helper'
# ber spec/features/merchants/index_spec.rb
# save_and_open_page
RSpec.describe 'merchant index page' do
  describe 'showing merchants' do
    before :each do
      visit merchants_path
    end
    let(:merchant) { MerchantsFacade.all_merchants[0..4] }
    it 'lists all merchants by name' do
      expect(page).to have_content(merchant[0].name)

      expect(page).to have_link(merchant[0].name)

      click_on merchant[0].name

      expect(current_path).to eq("/merchants/#{merchant[0].id}")
    end

    it 'has a link to merchants show page' do
      click_on merchant[0].name

      expect(current_path).to eq("/merchants/#{merchant[0].id}")
      expect(page).to have_content(merchant[0].name)
      expect(page).to_not have_content(merchant[1].name)
    end
  end
end
# merchant show page
# <h1><%= @merchant.name %></h1>
# <h5>Items Ready to Ship:</h5>
# <% @items.each do |item| %><br>
#   Item Name: <%= item.name %><br>
#   Created at: <%= item.invoices_created_at.strftime('%A, %B %-d, %Y') %><br>
#   Invoice ID: <%= link_to item.invoices_id , merchant_invoice_path(@merchant.id, item.invoices_id) %><br>
# <% end %>

# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.

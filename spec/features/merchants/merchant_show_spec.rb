require 'rails_helper'
RSpec.describe 'the merchant show page', :vcr do
  it 'has a header with the merchants name' do
    visit '/merchants/1'
    save_and_open_page
    expect(page).to have_content()
  end
end

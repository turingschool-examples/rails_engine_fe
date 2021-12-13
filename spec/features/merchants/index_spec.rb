require 'rails_helper'

RSpec.describe 'Merchants Index' do
  before(:each) do
    visit merchants_path
  end

  it 'shows a list of linked merchant names' do
    expect(page).to have_content('Merchants Index')
    expect(page).to have_link('Schroeder-Jerde')

    click_link('Schroeder-Jerde')

    expect(current_path).to eq(merchant_path(1))
  end
end

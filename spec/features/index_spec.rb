require 'rails_helper'
RSpec.describe 'merchants index' do
  it 'lists all the merchants' do
    visit merchants_path
    expect(page).to have_content('Merchants')
    expect(page).to have_content('Schroeder-Jerde')
  end

  it 'each merchant links to their items' do
    visit merchants_path
    click_link('Schroeder-Jerde')
    expect(current_path).to eq('/merchants/1')
  end
end

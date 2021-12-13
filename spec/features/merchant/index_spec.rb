require 'rails_helper'

RSpec.describe 'Merchant Index Page' do
  let!(:merchant1) {Merchant.create!(name: 'Merchant1')}
  let!(:merchant2) {Merchant.create!(name: 'Merchant2')}
  let!(:merchant3) {Merchant.create!(name: 'Merchant3')}

  it 'displays all merchants' do
    visit merchants_index_path

    expect(page).to have_link('Merchant1')
    expect(page).to have_link('Merchant2')
    expect(page).to have_link('Merchant3')
  end

  it 'links to the merchants show page' do
    visit merchants_path

    click_link 'Merchant1'

    expect(current_path).to eq(merchants_path(merchant1))
  end
end
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'merchants index page' do
  before(:each) do
    stub_request(:get, 'http://localhost:3000/api/v1/merchants')
      .to_return(status: 200, body: File.read('spec/fixtures/merchants.json'))
  end
  it 'displays all merchants' do
    visit merchants_path

    expect(page).to have_content('Merchants')
    expect(page).to have_link('Schroeder-Jerde', href: merchant_path(1))
    expect(page).to have_link('Wisozk, Hoeger and Bosco', href: merchant_path(100))
  end
end

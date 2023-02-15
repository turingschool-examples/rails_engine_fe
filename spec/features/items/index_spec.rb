# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'items index page' do
  before(:each) do
    stub_request(:get, 'http://localhost:3000/api/v1/items')
      .to_return(status: 200, body: File.read('spec/fixtures/items.json'))
  end

  it 'displays all items with links to the items show page' do
    visit items_path

    expect(page).to have_content('Items')
    expect(page).to have_link('Item Occaecati Non', href: item_path(74))
    expect(page).to have_link('Item Expedita Aliquam', href: item_path(5))
  end
end

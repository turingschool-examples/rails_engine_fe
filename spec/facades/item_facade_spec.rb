require 'rails_helper'

RSpec.describe ItemFacade do
  it 'can return a collection of items for a merchant' do
    items_data = ItemFacade.items_data

    expect(items_data).to be_a(Array)
    expect(items_data[0]).to be_a(Item)
  end
end
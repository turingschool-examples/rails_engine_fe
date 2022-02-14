require 'rails_helper'

RSpec.describe ItemFacade do
  it 'items' do
    merchant_id = 1
    items = ItemFacade.all_items_for_merchant(merchant_id)

    expect(items).to be_a Array
    items.each do |item|
      expect(item).to be_a Item
    end
  end
end

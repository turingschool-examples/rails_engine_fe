require 'rails_helper'

RSpec.describe 'Item Facade' do

  it 'creates item poros' do
    items = ItemFacade.merchant_items(1)

    expect(items).to be_an(Array)

    items.each do |item|
      expect(item).to be_an_instance_of(Item)
    end
  end
end

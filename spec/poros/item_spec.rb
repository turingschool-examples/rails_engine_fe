require 'rails_helper'

RSpec.describe Item do
  let!(:item) { ItemFacade.item_show(4) }

  it 'has attributes' do
    expect(item.item_id).to be_an Integer
    expect(item.merchant_id).to be_an Integer
    expect(item.name).to be_a String
    expect(item.description).to be_a String
    expect(item.unit_price).to be_a Float
  end
end
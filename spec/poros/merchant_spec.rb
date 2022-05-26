require 'rails_helper'

RSpec.describe Merchant do
  it 'exists' do
    merchant = Merchant.new({id: 1, attributes: {name: 'EZ Pawn'}})
    expect(merchant.name).to eq('EZ Pawn')
    expect(merchant.id).to eq(1)
  end
end

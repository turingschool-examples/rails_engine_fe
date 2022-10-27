require 'rails_helper'

RSpec.describe Merchant do
  it 'exists' do
    attrs = {
      id: 3,
      attributes: {
      name: 'The best Merchant'
      }
    }
    merchant = Merchant.new(attrs)

    expect(merchant).to be_a Merchant
    expect(merchant.id).to eq(3)
    expect(merchant.name).to eq('The best Merchant')
  end
end


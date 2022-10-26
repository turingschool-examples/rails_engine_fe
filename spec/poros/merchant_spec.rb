require 'rails_helper'

RSpec.describe Merchant do
  it 'transforms a JSON into a merchant object' do
    data = {
        id: '1',
        attributes: {
          name: 'Merchant name'
        }
      }
    
    new_merchant = Merchant.new(data)
    expect(new_merchant.name).to eq('Merchant name')
    expect(new_merchant.id).to eq(1)
  end
end
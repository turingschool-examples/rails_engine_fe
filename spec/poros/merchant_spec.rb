require 'rails_helper'

RSpec.describe Merchant do
  it 'has attributes' do
    data = {
          id: 1,
          type: 'merchant',
          attributes: {
            name: 'Crate and Barrel'
          }
        }

    merchant = Merchant.new(data)

    expect(merchant).to be_a(Merchant)
    expect(merchant.id).to eq(1)
    expect(merchant.name).to eq('Crate and Barrel')
  end
end

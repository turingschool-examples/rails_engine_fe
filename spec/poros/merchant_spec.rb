require 'rails_helper'

RSpec.describe Merchant do

  it 'has_attributes' do
    data = {
      id: 1,
      attributes: {
        name: 'Paul Leonard'
      }
    }

    merchant = Merchant.new(data)
    expect(merchant).to be_an_instance_of(Merchant)
  end
end

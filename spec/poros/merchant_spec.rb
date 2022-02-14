require 'rails_helper'

RSpec.describe Merchant do
  it 'exists' do
    data = {:attributes => {name: 'Me'}, id: 1}
    merchant = Merchant.new(data)
    expect(merchant).to be_an_instance_of(Merchant)
  end

  it 'has attributes' do
      data = {:attributes => {name: 'Me'}, id: 1}
      merchant = Merchant.new(data)
      expect(merchant.name).to eq('Me')
      expect(merchant.id).to eq(1)
  end
end

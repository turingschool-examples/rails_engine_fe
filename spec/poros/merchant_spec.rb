require 'rails_helper'

RSpec.describe Merchant do
  let(:merchant) { Merchant.new({attributes: {name: 'Frankie Valley'}, id: 16}) }

  it 'exists' do
    expect(merchant).to be_instance_of Merchant
  end

  it 'has attributes' do
    expect(merchant.name).to eq('Frankie Valley')
    expect(merchant.id).to eq(16)
  end
end

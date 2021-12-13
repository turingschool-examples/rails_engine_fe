require 'rails_helper'

RSpec.describe Merchant do
  let(:data) do
    { :id=>"1",
      :type=>"merchant",
      :attributes=>
        {:name=>"Schroeder-Jerde"}}
  end

  let(:merchant) { Merchant.new(data) }

  it 'exists' do
    expect(merchant).to be_a(Merchant)
  end

  it 'has attributes' do
    expect(merchant.id).to eq(1)
    expect(merchant.name).to eq('Schroeder-Jerde')
  end
end

require 'rails_helper'

RSpec.describe Merchant do
  it 'merchant exists and has attributes' do
    data = {id: 1, attributes: {name: "Albatross Smith"}}
    merchant1 = Merchant.new(data)

    expect(merchant1.name).to eq("Albatross Smith")
    expect(merchant1.id).to eq(1)
  end
end
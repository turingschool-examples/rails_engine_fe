require 'rails_helper'

RSpec.describe Merchant do
  let!(:attributes) { {name: "Bob Barker"} }
  let!(:merchant) { Merchant.new(attributes) }

  it 'exists' do
    expect(merchant).to be_a(Merchant)
  end

  it 'has attributes' do
    expect(merchant.name).to eq("Bob Barker")
  end
end

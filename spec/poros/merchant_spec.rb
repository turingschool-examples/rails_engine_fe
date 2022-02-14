require 'rails_helper'

RSpec.describe 'merchant poro' do
  let!(:attributes) { {id: 1, type: 'model', attributes: {name: 'Bob'}} }
  let!(:merchant) { Merchant.new(attributes) }

  it "exists" do
    expect(merchant).to be_a(Merchant)
  end

  it "has attributes" do
    expect(merchant.name).to eq('Bob')
    expect(merchant.id).to eq(1)
  end
end

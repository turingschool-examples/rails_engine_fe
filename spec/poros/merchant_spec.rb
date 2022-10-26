require 'rails_helper'

RSpec.describe Merchant do
  it 'exists and as attributes' do
    fake_data =  {
            id: 1,
            attributes: {
                name: "Schroeder-Jerde"
            }}

    merchant = Merchant.new(fake_data)

    expect(merchant).to be_a(Merchant)
    expect(merchant.id).to eq(1)
    expect(merchant.name).to eq("Schroeder-Jerde")
  end
end

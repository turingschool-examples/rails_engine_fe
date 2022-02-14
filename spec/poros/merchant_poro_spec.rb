require 'rails_helper'

RSpec.describe MerchantPoro do

  it 'exists' do
    attributes = {
      name: Faker::Lorem.characters(number:5)
    }

    merchant = Merchant.new(attributes)

    expect(merchant).to be_a Merchant
    expect(merchant.name).to eq(attributes[:name])
  end

end

require 'rails_helper'

RSpec.describe Merchant do 

  it "exists" do 

    attributes = {
      id: 1, 
      name: "Kitzman and Sons"
    }

    merchant = Merchant.new(attributes)

    expect(merchant).to be_a(Merchant)
    expect(merchant.id).to eq(1)
    expect(merchant.name).to eq("Kitzman and Sons")
  end
end

require 'rails_helper'

RSpec.describe Merchant do
  it 'is initialized with a hash of movie attributes' do
    merchant_details = { id: "1",
                            :attributes=>{:name=>"Schroeder-Jerde"}
                            }

    merchant = Merchant.new(merchant_details)

    expect(merchant.name).to eq("Schroeder-Jerde")
    expect(merchant.id).to eq(1)
  end
end

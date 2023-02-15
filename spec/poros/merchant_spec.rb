require 'rails_helper' 

RSpec.describe Merchant do 
  it 'exists and has name attribute' do 
    data = { 
        "id": "11",
        "type": "merchant",
        "attributes": {
            "name": "Pollich and Sons"
          }
        }

    merchant = Merchant.new(data)

    expect(merchant).to be_an_instance_of(Merchant)
    expect(merchant.name).to eq("Pollich and Sons")
  end
end
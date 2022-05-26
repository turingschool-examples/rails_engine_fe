require 'rails_helper'

RSpec.describe Merchant do
  context 'initialization' do
    it 'is initialized with a hash' do
      data = { 
        id: "1",
        attributes: {
          name: 'Billy Jones'
        }
      }

      merchant = Merchant.new(data)

      expect(merchant).to be_a Merchant
    end

    it 'has readable attributes' do
      data = { 
        id: "1",
        attributes: {
          name: 'Billy Jones'
        }
      }

      merchant = Merchant.new(data)
      
      expect(merchant.id).to eq 1
      expect(merchant.name).to eq 'Billy Jones'
    end
  end
end

require 'rails_helper'

RSpec.describe Merchant do 
  it 'exists with attributes' do 
    data = {
      :id => 1,
      :attributes => {
        :name =>"The Stranger"
      }
    }

    merchant = Merchant.new(data)

    expect(merchant).to be_an(Merchant)
    expect(merchant.id).to eq(1)
    expect(merchant.name).to eq("The Stranger")
  end 
end 
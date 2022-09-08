require 'rails_helper'

RSpec.describe Merchant do 
  it "exists and has attributes" do 
    # response = JSON.parse(File.read('spec/fixtures/merchants.json'), symbolize_names: true)[:data]
    merchant = Merchant.new(
                            {id: 1, 
                            attributes: 
                            {name: 'Bob'}
                            }
                          )

    expect(merchant).to be_a(Merchant)
    expect(merchant.name).to be_a(String)
    expect(merchant.name).to eq("Bob")
    expect(merchant.id).to be_a(Integer)
    expect(merchant.id).to eq(1)
  end
end
require 'rails_helper'

RSpec.describe Merchant do

  before(:each) do 
    @merchant_data = {id: "1", attributes: {name: "Buffalo Trace"}}
  end

  it 'will create an Item object with all attributes' do 
    merchant = Item.new(@merchant_data)

    expect(merchant.id).to eq("1")
    expect(merchant.name).to eq("Buffalo Trace")
  end
end
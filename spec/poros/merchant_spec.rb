require 'rails_helper'

describe Merchant do
  it 'has attributes' do
    merchant = Merchant.new({:id=>"1", :type=>"merchant", :attributes=>{:name=>"Barnes"}})
    expect(merchant.name).to eq('Barnes')
  end
end

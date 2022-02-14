require 'rails_helper'

RSpec.describe OneMerchant do
  it 'returns the attributes of a given merchant' do
    data = {
      :id => "1",
      :type => "merchant",
      :attributes =>
      {
        :name => "Happy Village"
      }
    }
    merchant = OneMerchant.new(data)
    expect(merchant.name).to eq "Happy Village"
  end
end

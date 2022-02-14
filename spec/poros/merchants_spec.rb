require 'rails_helper'

RSpec.describe Merchants do
  it 'returns all of the merchants' do
    data = {:data => [{
      :id => "1",
      :type => "merchant",
      :attributes =>
      {
        :name => "Happy Village"
      }
    },
    {
      :id => "2",
      :type => "merchant",
      :attributes => {
        :name => "Sad Village"
      }}
      ]}
    merchants = data[:data].map {|merchant| OneMerchant.new(merchant)}
    expect(merchants.count).to eq 2
  end
end

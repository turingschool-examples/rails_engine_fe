require 'rails_helper'

RSpec.describe MerchantItems do
  it 'returns the items of a given merchant' do
    merchant = create(:merchant)
    data = {:data => [{
      :id => "1",
      :type => "item",
      :attributes =>
      {
        :name => "Ball",
        :description => "Blue",
        :unit_price => 22.22,
        :merchant_id => merchant.id
      }},
      {
      :id => "2",
      :type => "item",
      :attributes =>
      {
        :name => "Trampoline",
        :description => "Gray",
        :unit_price => 222.22,
        :merchant_id => merchant.id
      }}
    ]}
    items = data[:data].map {|item| MerchantItems.new(item)}
    expect(items.first.name).to eq "Ball"
    expect(items.first.description).to eq "Blue"
    expect(items.count).to eq 2
  end
end

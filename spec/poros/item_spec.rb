require 'rails_helper'

RSpec.describe Item do
  it 'exists' do
    item = Item.new({id: 1, attributes: {name: 'Baseball', description: 'white leather'}})
    expect(item.name).to eq('Baseball')
    expect(item.description).to eq('white leather')
    expect(item.id).to eq(1)
  end
end

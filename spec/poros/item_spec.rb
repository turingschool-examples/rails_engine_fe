require 'rails_helper'

RSpec.describe Item do
  it 'has attributes' do
    item = Item.new(item_data)
    
    expect(item.id).to eq('4')
    expect(item.name).to eq('Item Nemo Facere')
  end
end
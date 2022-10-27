require 'rails_helper'

RSpec.describe ItemFacade do
  it 'can retrive data for a specific merchant', vcr: { record: :new_episodes } do
    item_data = ItemFacade.one_item(179)

    expect(item_data).to be_a(Item)
  end
end
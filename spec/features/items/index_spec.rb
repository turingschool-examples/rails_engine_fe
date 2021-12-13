require 'rails_helper'

RSpec.describe 'Items Index' do
  before :each do
    @items = ItemFacade.items
  end

  it 'displays a list of items by name' do
    visit '/items'

    @items.each do |item|
      expect(page).to have_link(item.name)
    end
  end
end

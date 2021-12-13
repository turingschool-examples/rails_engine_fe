require 'rails_helper'

RSpec.describe 'Item Show Page' do
  before :each do
    @item = ItemFacade.item(100)
  end

  it 'displays a single items information' do
    visit "/items/#{@item.id}"

    expect(page).to have_content(@item.name)
    expect(page).to have_content(@item.unit_price)
    expect(page).to have_content(@item.description)
  end
end

require 'rails_helper'

RSpec.describe 'Item Show' do
  before(:each) do
    @item = ItemsFacade.item_by_id(4)

    visit item_path("#{@item.id}")
  end

  it 'shows item attributes' do
    expect(page).to have_content("#{@item.name}")
    expect(page).to have_content("#{@item.description}")
    expect(page).to have_content("#{@item.unit_price}")
  end
end

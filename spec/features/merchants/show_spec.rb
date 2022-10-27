require 'rails_helper'

RSpec.describe 'the Merchant Show Page' do
  before :each do
    visit merchant_path(1)
  end

  it 'shows all of a merchants items' do
    save_and_open_page
    expect(page).to have_content("Item Que Esse")
  end

end

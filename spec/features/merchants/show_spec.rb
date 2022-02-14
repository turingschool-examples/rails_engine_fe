require 'rails_helper'

RSpec.describe "Merchants Show Page" do
  xit "displays a merchant by id" do
    visit (merchant_path(id))

    expect(page).to have_content(merchants name)
    expect(page).to have_content(merchants items)
  end
end

require 'rails_helper'
RSpec.describe 'merchants show' do
  it "shows a list that merchants items" do
    VCR.use_cassette('merchants_show') do
      visit '/merchants/1'
      expect(page).to have_content("Item Nemo Facere")
    end
  end
end

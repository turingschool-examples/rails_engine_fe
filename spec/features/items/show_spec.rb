require 'rails_helper'

RSpec.describe 'Item Show' do
  VCR.use_cassette('item_show') do
    it 'Item Show page shows all its information' do
      visit item_path("10")
      expect(current_path).to eq(item_path("10"))

      expect(page).to have_content("Item Quidem Suscipit")
      expect(page).to have_content("Reiciendis sed aperiam culpa animi laudantium. Eligendi veritatis sint dolorem asperiores. Earum alias illum eos non rerum.")
      expect(page).to have_content(340.18)

    end
  end
end

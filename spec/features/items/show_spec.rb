require 'rails_helper' 

RSpec.describe 'item show page' do 
  context 'happy path' do 
    it 'shows the items attributes and has link to merchant show page' do 
      VCR.use_cassette('rails-engine_item_show', re_record_interval: 7.days) do 
        visit "/items/10"

        expect(page.status_code).to eq(200)
        expect(page).to have_content("Reiciendis sed aperiam culpa animi laudantium. Eligendi veritatis sint dolorem asperiores. Earum alias illum eos non rerum.")
        expect(page).to have_content("340.18")
        expect(page).to have_link('Schroeder-Jerde')
      end 
    end 
  end 
end 
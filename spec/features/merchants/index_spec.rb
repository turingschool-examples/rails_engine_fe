require 'rails_helper'

RSpec.describe 'The merchants index page' do 
  it 'displays all merchants from the exposes api endpoint' do 
    # data = {
    #   :id => 1,
    #   :attributes => {
    #     :name =>"The Stranger"
    #   }
    # }
    # merchant = Merchant.create(data)

    VCR.use_cassette('merchants_index') do 
      visit merchants_path

      within '#merchants' do 
        expect(page).to have_content("Merchants")
        expect(page).to have_link("Schroeder-Jerde")
        click_link("Schroeder-Jerde")
        expect(current_path).to eq("/merchants/1")
      end  
    end 
  end 
end 
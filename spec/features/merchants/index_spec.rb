require 'rails_helper'

RSpec.describe 'merchant index' do 
  let!(:merchants) { MerchantFacade.merchant_info }
  let!(:merchant) {MerchantFacade.merchant_find(1) }
  it 'shows list of all merchants' do 
    visit merchants_path

    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Klein, Rempel and Jones")
    expect(page).to have_content("Willms and Sons")
    expect(page).to have_content("Cummings-Thiel")
  end

  it 'has link to merchant show page' do 
    visit merchants_path 

    click_link "Schroeder-Jerde"

    expect(current_path).to eq(merchant_path(merchant.id))
  end
end
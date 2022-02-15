require 'rails_helper'

RSpec.describe 'index' do
  context 'happy path: merchants exist' do
    let!(:merchants) { RailsEngineFacade.get_merchants }
    let!(:merchant) { merchants.sample(1)[0] }
    it "calls the API and returns a list of merchants" do
      visit '/merchants'

      within 'div.merchants' do
        click_link "Merchant #{merchant.id}"
        expect(current_path).to eq("/merchants/#{merchant.id}")
      end
    end
  end


  # context 'sad path: no merchants' do
  #   xit "returns an error message" do
  #     allow(RailsEngineService.get_merchants).to_return({data: [], error: "No Merchants"})
  #     visit '/merchants'
  #
  #     within 'div.merchants' do
  #       expect(page).to have_content("No merchants")
  #     end
  #   end
  # end
end

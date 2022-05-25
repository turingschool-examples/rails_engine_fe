require "rails_helper"

RSpec.describe "Merchant index page" do
  it "shows a list of merchant links" do
    visit "/merchants"

    # merchant = Merchant.new
    #
    # merchants.each do |merchant|
    #   expect(page).to have_link(merchant.name.to_s)
    # end
  end
end

require "rails_helper"

RSpec.describe "merchant service" do
  it "can get all the merchants" do
    merchants = MerchantService.all_merchants

    expect(merchants).to be_an Array
  end
end

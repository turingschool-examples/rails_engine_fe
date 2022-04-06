require "rails_helper"

RSpec.describe "merchant poros" do
  it "has attributes" do
    data = {
        id: 1,
        attributes: {
          name: "Eldridge"
        }
    }

    merchant = Merchant.new(data)
    expect(merchant).to be_an_instance_of Merchant
  end
end

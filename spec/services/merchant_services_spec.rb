require "rails_helper"


RSpec.describe(MerchantService) do
  it("can return a list of merchants") do
    merchants = MerchantService.all_merchants

    expect(merchants[:data]).to be_a(Array)
    expect(merchants[:data][0][:attributes]).to have_key(:name)
  end

  it("can return one merchant") do
   merchant = MerchantService.one_merchant(1)

   expect(merchant).to be_a(Hash)
   expect(merchant[:attributes]).to have_key(:name)
 end
end
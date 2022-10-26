require 'rails_helper'

RSpec.describe MerchantFacade do
  it 'finds and creates one merchant' do
    merchant = MerchantFacade.find_merchant(3)

    expect(merchant).to be_instance_of(Merchant)
    expect(merchant.id.to_i).to eq(3)
    expect(merchant.name).to eq("Willms and Sons")
  end

  it 'finds and creates multiple merchants' do
    merchants = MerchantFacade.find_merchants
    merchant = merchants.second

    expect(merchants.last).to be_instance_of(Merchant)
    expect(merchant.id.to_i).to be_a(Integer)
    expect(merchant.name).to be_a(String)
  end
end

#Who are you- back end software development student at Turing, went to college at UGA and got degree in financial planning, 
#What do you do- projects, specific things I have worked on- worked in corporate finance world for a few years and decided it wasn't for me, always had interest in software development and decided on Turing after hearing about it from others and doing research
#what do you want- to find a job where

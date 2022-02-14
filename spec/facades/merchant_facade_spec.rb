require 'rails_helper'

RSpec.describe MerchantFacade do
  it 'creates merchant poros' do
    merchants = MerchantFacade.all_merchants

    expect(merchants.first).to be_an_instance_of(Merchant)
    expect(merchants.first.name).to eq('Schroeder-Jerde')
    expect(merchants.count).to eq(100)
  end

  it 'creates a merchant poro' do
    merchants = MerchantFacade.merchant(1)

    expect(merchants).to be_an_instance_of(Merchant)
    expect(merchants.name).to eq('Schroeder-Jerde')
  end

  it 'creates item poros for a merchant' do
    items = MerchantFacade.merch_items(1)

    expect(items.first).to be_an_instance_of(Item)
    expect(items.first.name).to eq('Item Nemo Facere')
  end
end
require 'rails_helper'

describe MerchantsFacade do
  it 'can return all of the merchants' do
    facade = MerchantsFacade.new
    merchants = facade.merchants

    expect(merchants.first.name).to eq 'Schroeder-Jerde'
    expect(merchants.first.id).to eq 1
  end

  it 'can return a specific merchant' do
    facade = MerchantsFacade.new(42)
    merchant = facade.merchant

    expect(merchant.name).to eq 'Glover Inc'
    expect(merchant.id).to eq 42
  end

  it 'can return the merchants items' do
    facade = MerchantsFacade.new(99)
    items = facade.items

    expect(items.first.name).to eq 'Item Excepturi Rem'
  end
end
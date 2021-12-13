require 'rails_helper'

RSpec.describe 'Merchants Facade' do
  it 'gets a list of all merchants' do
    response = MerchantsFacade.all_merchants

    expect(response.first).to be_a(Merchant)
  end

  it 'gets one merchant' do
    response = MerchantsFacade.merchant_by_id(1)

    expect(response).to be_a(Merchant)
    expect(response.id).to eq(1)
    expect(response.name).to eq('Schroeder-Jerde')
  end

  it 'gets a list of merchant items' do
    response = MerchantsFacade.merchant_items(1)

    expect(response.first).to be_a(Item)
    expect(response.first.id).to eq(4)
    expect(response.first.name).to eq('Item Nemo Facere')
    expect(response.first.description).to eq('Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.')
    expect(response.first.unit_price).to eq(42.91)
    expect(response.first.merchant_id).to eq(1)
  end

end

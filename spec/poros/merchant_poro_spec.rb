require 'rails_helper'

RSpec.describe MerchantPoro do

  it 'exists' do
    attributes = {
      attributes: {
        name: Faker::Lorem.characters(number:5)
      }
    }
    {:id=>"3", :type=>"merchant", :attributes=>{:name=>"Willms and Sons"}}

    merchant = MerchantPoro.new(attributes)

    expect(merchant).to be_a MerchantPoro
    expect(merchant.name).to eq(attributes[:attributes][:name])
  end

end

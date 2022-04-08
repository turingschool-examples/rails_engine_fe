require 'rails_helper'
require './app/poros/merchant'

RSpec.describe 'Merchant PORO' do 
    it 'can store data' do
        test_data = {

            id: 1,
            attributes: {

                name: "soup",
                test_bogus_wogus: "foobar"

            },

        }

        poro = MerchantPoro.new(test_data)

        expect(poro.name).to eq(test_data[:attributes][:name])
        expect(poro.id).to eq(test_data[:id])
    end 
end 
require 'rails_helper'

RSpec.describe 'Merchant PORO' do 
    it 'can store data' do
        test_data = {

            id: 1,
            attributes: {

                name: "soup",
                test_bogus_wogus: "foobar"

            },

        }

        poro = MerchantPoro.new(data)

        expect(poro.name).to eq(test_data[:attributes][:name])
        expect(poro.id).to eq(test_data[:id])
    end 
end 
require 'rails_helper'
RSpec.describe MerchantPoro do
  describe 'initiailize' do
    it 'exists and has attributes' do
      merchant = MerchantPoro.new({id: 1,
                                    attributes: {name: 'Name'}})
      actual = merchant
      expected = MerchantPoro
      expect(actual).to be_a(expected)

    end
  end
end

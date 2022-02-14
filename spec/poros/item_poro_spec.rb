require 'rails_helper'
RSpec.describe ItemPoro do
  describe 'initiailize' do
    it 'exists and has attributes' do
      item = ItemPoro.new({id: 1,
                          attributes: {name: 'Name', merchant_id: 1}})
      actual = item
      expected = ItemPoro
      expect(actual).to be_a(expected)

    end
  end
end

require 'rails_helper'

RSpec.describe Merchant, type: :poro do
  describe 'object' do
    it 'exists and has attributes' do
      merchant = Merchant.new(name: "name")
      expect(merchant).to be_a(Merchant)
      expect(merchant.name).to eq("name")
    end
  end
end

require 'rails_helper'

RSpec.describe MerchantService do

  before :each do
    @service = MerchantService.new
  end

  it 'gets some merchants' do
    results = @service.get_all_merchants

    results[:data].each do |result|
      expect(result).to have_key(:id)
      expect(result).to have_key(:type)
      expect(result[:type]).to eq('merchant')
      expect(result).to have_key(:attributes)
    end
  end

  # it '' do
  #
  # end

end

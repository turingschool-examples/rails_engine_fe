require 'rails_helper'

RSpec.describe MerchantService, :vcr do
  it 'gets data from rails engine backend' do
    response = MerchantService.get_data('/merchants')
    expect(response).to be_a(Hash)
    expect(response[:results]).to be_an(Array)
    expect(response).to have_key(:page)
    expect(response).to have_key(:results)
    expect(response).to have_key(:total_pages)
    expect(response).to have_key(:total_results)
  end

  xit 'gets one merchant' do
    response = MerchantService.get_data("merchants/#{merchant.id}")

    response[:results].each do |merchant|
      expect(merchant).to have_key(:backdrop_path)
      expect(merchant).to have_key(:genre_ids)
      expect(merchant).to have_key(:id)
      expect(merchant).to have_key(:original_title)
      expect(merchant).to have_key(:overview)
      expect(merchant).to have_key(:poster_path)
      expect(merchant).to have_key(:title)
      expect(merchant).to have_key(:vote_average)
    end
  end
end

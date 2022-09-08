# frozen_string_literal: true

class MerchantService
  def self.get_merchant_list
    conn = Faraday.new(url: 'http://localhost:3000') do |faraday|
      # faraday.headers['api_key'] = ENV['movie_api_key']
    end
    response = conn.get("/api/v1/merchants")

    data = JSON.parse(response.body, symbolize_names: true)
    
    data[:data]
  end
end
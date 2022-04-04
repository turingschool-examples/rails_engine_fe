require 'faraday'
require 'json'

class MerchantService
  class << self

    def connection
      Faraday.new(url: "http://localhost:3000")
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end

    def find_all_merchants
      response = connection.get("/api/v1/merchants")
      parse_json(response)
    end
  end
end

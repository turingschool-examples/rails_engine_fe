class MerchantService
  class << self

    def connection
      Faraday.new(url: 'http://localhost:3000/api/v1/')
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end

    def all_merchants
      response = connection.get("merchants")
      parse_json(response)
    end

    def merchant_items(id)
      response = connection.get("merchants/#{id}/items")
      parse_json(response)
    end

  end
end

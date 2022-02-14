
class MerchantService
  class << self
    def connection
      Faraday.new(url: 'http://localhost:3000/api/v1/')
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end

    def merchants 
      response = connection.get('merchants')

      data = parse_json(response)
    end

    def merchant(id) 
      response = connection.get("merchants/#{id}")

      data = parse_json(response)
    end

    def merchant_items(id)
      response = connection.get("merchants/#{id}/items")

      data = parse_json(response)
    end
  end
end

class MerchantService
  class << self
    def all_merchants
      response = Faraday.get('http://localhost:3000/api/v1/merchants')
      parse(response)
    end

    def one_merchant(merchant_id)
      response = Faraday.get("http://localhost:3000/api/v1/merchants/#{merchant_id}")
      parse(response)
    end

    def merchants_items(merchant_id)
      response = Faraday.get("http://localhost:3000/api/v1/merchants/#{merchant_id}/items")
      parse(response)
    end

    private

    def parse(response)
      parsed = JSON.parse(response.body, symbolize_names: true)
    end
  end
end

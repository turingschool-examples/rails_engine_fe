class MerchantService

  def self.merchants
    call_api('/api/v1/merchants')
  end

  def self.find_merchant(id)
    call_api("/api/v1/merchants/#{id}")
  end

  def self.merchant_items(id)
    call_api("/api/v1/merchants/#{id}/items")
  end

  private

    def self.call_api(path)
      response = connection.get(path)
      parsed_data(response)
    end

    def self.connection
      Faraday.new('http://localhost:3000')
    end

    def self.parsed_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
end

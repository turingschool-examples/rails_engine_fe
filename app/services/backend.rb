class Backend

  def self.merchants_index_endpoint
    get_url '/api/v1/merchants/'
  end

  def self.merchant_items_endpoint(id)
    get_url "api/v1/merchants/#{id}/items"
  end

  def self.merchant_endpoint(id)
    get_url "api/v1/merchants/#{id}"
  end

  def self.get_url(endpoint)
    connection = Faraday.new('http://localhost:3000')
    response = connection.get(endpoint)
    response_body = JSON.parse(response.body, symbolize_names: true)
  end

end

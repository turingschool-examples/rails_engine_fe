class MerchantService < BaseService 

  # def self.conn 
  #   Faraday.new(url: 'http://localhost:3000')
  # end

  # def self.parse_json(response)
  #   JSON.parse(response.body, symbolize_names: true)
  # end

  def self.merchant_data
    json = conn.get('/api/v1/merchants')
    parse_json(json)
  end

  def self.find_merchant(id)
    json = conn.get("/api/v1/merchants/#{id}")
    parse_json(json)
  end

end
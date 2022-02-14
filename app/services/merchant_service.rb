class MerchantService

  def self.get_all_merchants
    response = conn.get("/merchants")
    require "pry"; binding.pry
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merchant(merchant_id)
    response = conn.get("/merchants/#{merchant_id}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
     url = 'http://localhost:3000/api/v1'
     Faraday.new(url: url)
   end
end

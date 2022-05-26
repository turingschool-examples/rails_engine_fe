class MerchantService
  def self.conn
    Faraday.new(url: 'http://localhost:3000/api/v1/')
  end

  def self.get_merchants
    response = conn.get('merchants')
    JSON.parse(response.body, symbolize_names: true)
  end


  def self.get_merchant
    response = conn.get("merchants/#{id}")
    JSON.parse(response.body, symbolize_names: true)
  end

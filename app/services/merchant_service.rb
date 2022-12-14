class MerchantService
  def self.get_merchant(id)
    get_url("/api/v1/merchants/#{id}")
  end
  
  def self.get_merchants
    get_url('/api/v1/merchants')
  end
  
  def self.get_url(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end
  
  def self.conn
    Faraday.new(url: 'http://localhost:3000')
  end
end
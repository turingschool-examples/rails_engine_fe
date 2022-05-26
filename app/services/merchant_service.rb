class MerchantService
  def self.get_all_merchants
    response = conn.get('/api/v1/merchants')
    
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new('http://localhost:3000') do |f|
      f.adapter Faraday.default_adapter
    end
  end
end

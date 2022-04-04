class MerchantService 
  def self.conn
    Faraday.new(url: 'http://localhost:3000/api/v1') do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def self.all_merchants
    response = conn.get('merchants')
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.merchant_info(id)
    response = conn.get("merchants/#{id}")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.merchant_items(merchant_id)
    response = conn.get("merchants/#{merchant_id}/items")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.find_all_merchants(query)
    response = conn.get("merchants/find_all?name=#{query}")
    json = JSON.parse(response.body, symbolize_names: true)
  end
end
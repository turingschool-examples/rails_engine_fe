class MerchantService

  def self.conn
    Faraday.new('http://localhost:3000/api/v1/') do |faraday|
    end
  end

  def self.get_all_merchants
    response = conn.get("merchants")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_a_merchant(id)
    response = conn.get("merchants/#{id}")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_a_merchants_items(id)
    response = conn.get("merchants/#{id}/items")
    json = JSON.parse(response.body, symbolize_names: true)
  end
end

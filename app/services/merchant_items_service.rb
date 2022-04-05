class MerchantItemsService
  def self.conn 
    Faraday.new(url: 'http://localhost:3000/')
  end

  def self.merchant_items(merchant)
    response = conn.get("api/v1/merchants/#{merchant.id}/items")
    JSON.parse response.body, symbolize_names: true
  end
end

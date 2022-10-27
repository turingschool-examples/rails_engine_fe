require 'faraday'

class ItemService
  

  def self.request_all_merchant_items(merchant_id)
    response = Faraday.get("http://localhost:3000/api/v1/merchants/#{merchant_id}/items")
    JSON.parse(response.body, symbolize_names: true)
  end
end
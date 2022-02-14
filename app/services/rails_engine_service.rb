require 'json'

class RailsEngineService

  def self.all_merchants
    get_url("/merchants")
  end

  def self.a_merchant(merchant_id)
    get_url("/merchants/#{merchant_id}")
  end

  def self.merchant_items(merchant_id)
    get_url("/merchants/#{merchant_id}/items")
  end

  def self.an_item(item_id)
    get_url("/items/#{item_id}")
  end

  def self.get_url(url)
    response = Faraday.get("http://localhost:3000/api/v1#{url}")
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end

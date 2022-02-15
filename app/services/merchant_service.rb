# frozen_string_literal: true

class MerchantService
  def self.find_merchant(string)
    response = conn.get('merchants/find', { name: string })
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merch_items(merchant_id)
    response = conn.get("merchants/#{merchant_id}/items")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merchant(merchant_id)
    response = conn.get("merchants/#{merchant_id}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merchants
    response = conn.get('merchants')
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.conn
    url = 'http://localhost:3000/api/v1/'
    Faraday.new(url: url)
  end
end

class MerchantService
  def get_all_merchants
    response = Faraday.get("http://localhost:3000/api/v1/merchants")
    parsed = JSON.parse(response.body, symbolize_names: true)
  end

  def get_merchant_items(merchant_id)
    response = Faraday.get("http://localhost:3000/api/v1/merchants/#{merchant_id}/items")
    parsed = JSON.parse(response.body, symbolize_names: true)
  end

  def find_merchant(keyword)
    response = Faraday.get("http://localhost:3000/api/v1/merchants/find_all?name=#{keyword}")
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end

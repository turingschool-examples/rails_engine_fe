class MerchantService
  def merchant_items(id)
    get_url("/api/v1/merchants/#{id}/items")
  end
  
  def find_by_id(id)
    get_url("/api/v1/merchants/#{id}")
  end
  
  def get_all_merchants
    get_url("api/v1/merchants")
  end

  def get_url(url)
    response = Faraday.new("http://localhost:3000/")
    response = response.get(url)
    JSON.parse(response.body, symbolize_names: true)[:data]
  end
end
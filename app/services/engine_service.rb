class EngineService
  def get_url(path)
    Faraday.get("http://localhost:3000/api/v1/#{path}")
  end

  def all_merchants
    response = get_url("/merchants")
    data = JSON.parse(response.body, symbolize_names: true)

    data[:data]
  end

  def merchant(id)
    response = get_url("/merchants/#{id}")
    data = JSON.parse(response.body, symbolize_names: true)

    data[:data]
  end

  def merchant_items(id)
    response = get_url("/merchants/#{id}/items")
    data = JSON.parse(response.body, symbolize_names: true)

    data[:data]
  end
end
class EngineService

  def get_url(url)
    Faraday.new(url)
  end

  def merchants
    conn = get_url("http://localhost:3000/api/v1")

    response = conn.get('http://localhost:3000/api/v1/merchants')

    JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def merchant(id)
    conn = get_url("http://localhost:3000/api/v1")

    response = conn.get("http://localhost:3000/api/v1/merchants/#{id}")

    JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def merchant_items(id)
    conn = get_url("http://localhost:3000/api/v1")

    response = conn.get("http://localhost:3000/api/v1/merchants/#{id}/items")

    JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def item(id)
    conn = get_url("http://localhost:3000/api/v1")

    response = conn.get("http://localhost:3000/api/v1/items/#{id}")

    JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def find_merchant(search)
    conn = get_url("http://localhost:3000/api/v1")

    response = conn.get("http://localhost:3000/api/v1/merchants/find?name=#{search}")

    JSON.parse(response.body, symbolize_names: true)[:data]
    # require "pry"; binding.pry
  end
end

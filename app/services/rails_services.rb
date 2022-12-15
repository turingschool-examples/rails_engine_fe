class RailsService
  def merchants
    get_url("/api/v1/merchants")
  end

  def merchant(id)
    get_url("/api/v1/merchants/#{id}/items")
  end

  def get_url(url, params = nil)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "http://localhost:3000")
  end
end

class RailsEngineService
  def merchants
    get_url("/api/v1/merchants")
  end

  def one_merchant(id)
    get_url("/api/v1/merchants/#{id}")
  end 

  def get_url(url)
    response = Faraday.get("http://localhost:3000#{url}")
    json = JSON.parse(response.body, symbolize_names: true)
  end
end

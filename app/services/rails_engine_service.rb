require 'json'

class RailsEngineService

  def self.all_merchants
    get_url("/merchants")
  end

  def self.get_url(url)
    response = Faraday.get("http://localhost:3000/api/v1#{url}")
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end

class RailsEngineService
  def self.conn
    Faraday.new('http://localhost:3000/api/v1/')
  end

  def self.json_parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_all_merchants
    response = conn.get('merchants')
    json_parse(response)
  end
end
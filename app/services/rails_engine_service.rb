class RailsEngineService
  def self.conn
    Faraday.new('http://localhost:3000/api/v1/')
  end

  def self.get_all_merchants
    response = conn.get('merchants')
    JSON.parse(response.body, symbolize_names: true)
  end
end
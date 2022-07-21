class BaseService 

  def self.conn 
    Faraday.new(url: 'http://localhost:3000')
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
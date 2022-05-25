class RailsEngineService
  def self.conn
    Faraday.new(url: "http://localhost:3000") do |f|
      f.adapter Faraday.default_adapter
    end
  end

  def self.merchants
    response = conn.get("/api/v1/merchants") do |c|
      c.options.params_encoder = Faraday::FlatParamsEncoder
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.find_merchant(id)
    response = conn.get("/api/v1/merchants/#{id}") do |c|
      c.options.params_encoder = Faraday::FlatParamsEncoder
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.items_for(merchant_id)
    response = conn.get("/api/v1/merchants/#{merchant_id}/items") do |c|
      c.options.params_encoder = Faraday::FlatParamsEncoder
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end

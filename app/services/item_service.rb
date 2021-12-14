class ItemService
  class << self
    def conn
      Faraday.new(url: 'http://localhost:3000/api/v1/items')
    end

    def get_data(url)
      response = conn.get(url)

      JSON.parse(response.body, symbolize_names: true)
    end
  end
end

class RailsEngineService
  class << self
    def get_data(endpoint)
      conn = Faraday.new(url: "http://localhost:3000/api/v1/")
      response = conn.get(endpoint)
      data = response.body
      JSON.parse(data, symbolize_names:  true)
    end

    def merchants_index
      merchants = get_data("merchants")
    end

    def merchant_show(id)
      merchant = get_data("merchants/#{id}")
    end

    def merchants_items(id)
      items = get_data("merchants/#{id}/items")
    end

    def items_index
      items = get_data("items")
    end

    def item_show(id)
      item = get_data("items/#{id}")
    end
  end
end
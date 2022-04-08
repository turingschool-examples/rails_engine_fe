class MerchantService

    def self.get_merchants
        get_url("/api/v1/merchants")
    end 

    def self.get_merchant(id)
        get_url("/api/v1/merchants/#{id}")
    end

    def self.get_items(id)
        get_url("/api/v1/merchants/#{id}/items")
    end

    def self.get_url(query = nil)
        con = Faraday.new(url: "http://localhost:3000")

        response = con.get(query)

        data = JSON.parse(response.body, symbolize_names: true)
    end 
end

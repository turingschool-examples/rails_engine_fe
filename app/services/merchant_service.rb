class MerchantService 
    def self.all_merchants 
        conn = Faraday.new(url: 'http://localhost:3000')

        response = conn.get('/api/v1/merchants')

        data = JSON.parse(response.body, symbolize_names: true)
        data[:data]
    end

    def self.merchant_details(id)
        conn = Faraday.new(url: 'http://localhost:3000')

        response = conn.get("/api/v1/merchants/#{id}")

        data = JSON.parse(response.body, symbolize_names: true)
        data[:data]
    end
end
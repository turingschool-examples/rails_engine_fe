class FaradayService
    
    def format(response)
        data = JSON.parse(response.body, symbolize_names: true)
    end 

    def get_url(query = nil)
        con = Faraday.new(url: "http://localhost:3000")

        response = con.get(query)

        format(response)
    end 

end
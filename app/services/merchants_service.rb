class MerchantsService
  class << self

    def call_api(path)
      response = conn.get(path)
      parse_response(response)
    end


    private

    def conn
      Faraday.new(url: "http://localhost:3000")
    end

    def parse_response(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end

class RailsEngineService
  def self.merchants
    get_url('merchants')
  end

  def self.get_url(url)
    @request_urls ||= {}

    if @request_urls[url].nil?
      response = Faraday.get("http://localhost:3000/api/v1/#{url}")
      @request_urls[url] = JSON.parse(response.body, symbolize_names: true)
    else
      @request_urls[url]
    end

  end
end

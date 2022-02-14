class RailsEngineService
  def self.merchants
    get_url('merchants')
  end

  def self.merchant(merchant_id)
    get_url("merchants/#{merchant_id}")
  end

  def self.merchant_items(merchant_id)
    get_url("merchants/#{merchant_id}/items")
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

class MerchantsServices

  def self.get_url(url,keyword = nil)
    conn = Faraday.new(url: "http://localhost:3000") do |faraday|
      faraday.params[:keyword] = keyword unless keyword.nil?
    end

    response = conn.get(url)

    response_body = JSON.parse(response.body, symbolize_names: true)
   
  end

  def self.merchants
    get_url("/api/v1/merchants")[:data]
  end

  def self.merchant(id)
    get_url("/api/v1/merchants/#{id}")[:data]
  end

  def self.merchant_items(merchant_id)
    get_url("/api/v1/merchants/#{merchant_id}/items")[:data]
  end
end
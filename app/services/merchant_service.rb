class MerchantService
  def self.get_index
    url = "http://localhost:3000/api/v1/merchants"
    response = Faraday.get(url)
    data = JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_show(id)
    url = "http://localhost:3000/api/v1/merchants/#{id}"
    response = Faraday.get(url)
    data = JSON.parse(response.body, symbolize_names: true)
  end
end

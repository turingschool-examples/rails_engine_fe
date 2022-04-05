class MerchantService
  def self.get_url(endpoint)
    response = Faraday.get("http://localhost:3000/api/v1/#{endpoint}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merchants
    attrs = MerchantService.get_url("/merchants")
    @merchants = attrs[:data].map {|obj_data|Merchant.new(obj_data)}
  end

  def self.get_merchant(id)
    attrs = MerchantService.get_url("/merchants/#{id}")
    Merchant.new(attrs[:data])
  end

  def self.get_merchant_items(id)
    attrs = MerchantService.get_url("/merchants/#{id}/items")
    @items = attrs[:data].map {|obj_data|Item.new(obj_data)}
  end
end

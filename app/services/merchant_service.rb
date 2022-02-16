class MerchantService < FaradayService

  def self.get_merchants
    get_url('/api/v1/merchants')
  end

  def self.get_merchant(id)
    get_url("/api/v1/merchants/#{id}")
  end

  def self.get_items(id)
    get_url("/api/v1/merchants/#{id}/items")
  end
end

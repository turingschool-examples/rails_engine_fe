class MerchantFacade
  def self.all_merchants
    json = MerchantService.get_merchants
    json[:data].map do |data|
      Merchant.new(data)
    end
  end


end

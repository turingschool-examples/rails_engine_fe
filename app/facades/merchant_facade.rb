class MerchantFacade 
  
   def self.all_merchants
    json = MerchantService.all_merchants

    @merchants = json[:data].map do |merchant_data|
      Merchant.new(movie_data)
    end
  end

  def self.merchant_info(id)
    json = MerchantService.merchant_info(id)

    @merchant = Merchant.new(json[:data])
  end
end
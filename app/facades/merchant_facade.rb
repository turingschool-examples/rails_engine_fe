class MerchantFacade 

  def self.merchants
    json = MerchantService.merchants[:data]
    @merchants = json.map do |merchant|
      Merchant.new(id: merchant[:id], name: merchant[:attributes][:name])
    end
  end

end

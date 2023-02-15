class MerchantFacade
  def sell.all_merchants
    response = RailsEngineService.get_all_merchants

    merchants = response[:data]

    merchants = data.map do |merchant|
      Merchant.new(merchant)
    end
  end
end
class MerchantFacade

  def self.all_merchants
    all_merchants = merchants_data[:data].map do |data|
      MerchantPoro.new(data)
    end
  end

  def self.find_merchant(id)
    merchant = service.get_all_merchants[:data].find do |m|
      m[:id] == id
    end
    MerchantPoro.new(merchant)
  end

  def self.service
    @_service ||= MerchantService.new
  end

  def self.merchants_data
    service.get_all_merchants
  end

end

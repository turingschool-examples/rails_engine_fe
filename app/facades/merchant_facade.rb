class MerchantFacade

  def self.all_merchants
    merchants_data = service.get_all_merchants

    all_merchants = merchants_data[:data].map do |data|
      MerchantPoro.new(data)
    end
  end

  def self.service
    @_service ||= MerchantService.new
  end

end

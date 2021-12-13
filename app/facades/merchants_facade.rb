class MerchantsFacade
  class << self
    def all_merchants
      MerchantService.get_data('/merchants')
    end
  end
end

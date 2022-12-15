require './app/services/rails_services'

class MerchantSearch

  def all_merchants
    merchants = service.merchants
    merchants[:data]
  end

  def single_merchant_items(id)
    merchant = service.merchant(id)
  end


  def service
    RailsService.new
  end
end
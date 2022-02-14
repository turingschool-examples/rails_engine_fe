class HomeController < ApplicationController
  def index
    if params[:"Search Merchants"]
      @merchants = MerchantFacade.search_merchants(params[:"Search Merchants"])
    else
      @merchants = []
    end
  end
end

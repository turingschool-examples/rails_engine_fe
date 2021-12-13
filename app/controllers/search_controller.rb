class SearchController < ApplicationController
  def merchants_search
    @merchants = MerchantsFacade.find_all_merchants_by_name(params[:name])
  end
end

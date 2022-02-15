class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.merchants_info
  end

  def show

    @items = MerchantFacade.merchant_items(params[:id])
    @merchant = MerchantFacade.one_merchant(params[:id])
  end

  # def find_all
  #   @merchants = MerchantFacade.merchant_search(params[:search])
  #   render "welcome/index"
  # end
end

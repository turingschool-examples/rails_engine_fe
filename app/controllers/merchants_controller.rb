class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.merchants
  end

  def show
    @items = MerchantFacade.items(params[:id])
  end
end

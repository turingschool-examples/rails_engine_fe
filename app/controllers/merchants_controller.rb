class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.merchants
  end

  def show
    @merchant = MerchantFacade.one_merchant(params[:id])

    @items = ItemFacade.all_items_for_merchant(params[:id])
  end
end

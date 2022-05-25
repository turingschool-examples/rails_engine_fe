class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.get_all_merchants
  end

  def show
    @merchant = MerchantFacade.find_by_id(params[:id])
    @items = MerchantFacade.merchant_items(@merchant.id)
  end
end
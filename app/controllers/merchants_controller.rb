class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.all_merchants
  end

  def show
    @merchant = MerchantFacade.find_merchant(merchant_params[:id])
    @items = ItemFacade.find_items(@merchant.id)
  end


  private

  def merchant_params
    params.permit(:id)
  end
end

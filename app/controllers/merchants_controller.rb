class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.merchants_info
  end

  def show
    index.map do |merchant|
      if params[:id] == merchant.id
        @merchant = merchant
      end
    end

    @items = MerchantFacade.item_info(params[:id])
  end
end

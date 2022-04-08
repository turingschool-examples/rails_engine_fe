class MerchantsController < ApplicationController
    def index
        @merchants = MerchantFacade.merchants_info
    end

    def show
        @merchant = MerchantFacade.merchant_info(params[:id])
        @items = MerchantFacade.get_items(params[:id])
    end
end 
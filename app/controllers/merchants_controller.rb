class MerchantsController < ApplicationController
    def index
        @merchants = MerchantFacade.merchants_info
    end

    def show

    end
end 
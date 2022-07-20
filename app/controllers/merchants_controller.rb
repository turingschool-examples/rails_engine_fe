class MerchantsController < ApplicationController 
    def index 
        @merchants = MerchantFacade.all_merchants
    end
end 
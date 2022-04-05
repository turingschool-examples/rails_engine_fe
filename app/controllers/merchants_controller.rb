class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.all_merchants
  end

  def show
    @merchant = MerchantFacade.one_merchant
    @merchant_items = MerchantFacade.all_merchant_items
  end
end

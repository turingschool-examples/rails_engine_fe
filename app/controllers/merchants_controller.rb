class MerchantsController < ApplicationController
  def index
    @merchants = MerchantSearch.new.all_merchants
  end

  def show
    @merchant = MerchantSearch.new.single_merchant_items(params[:id])
  end
end

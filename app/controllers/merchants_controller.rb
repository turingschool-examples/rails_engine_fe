class MerchantsController < ApplicationController
  def index
    @merchants = MerchantService.merchants
  end

  def show
    @merch_items = MerchantService.merch_items(params[:id])
  end
end

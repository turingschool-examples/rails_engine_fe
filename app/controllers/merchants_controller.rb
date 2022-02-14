class MerchantsController < ApplicationController
  @@facade = HeaderFacade.new
  def index
    @merchants = @@facade.merchants
  end

  def show
    @merchant = @@facade.one_merchant(params[:id])
    @items = @@facade.merchant_items(params[:id])
  end
end

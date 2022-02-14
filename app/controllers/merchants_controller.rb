class MerchantsController < ApplicationController
  def index
    @merchants = RailsEngineFacade.merchants
  end

  def show
    @merchant = RailsEngineFacade.merchant(params[:id])
    @merchant_items = RailsEngineFacade.merchant_items(params[:id])
  end
end

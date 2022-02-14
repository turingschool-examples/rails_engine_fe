class MerchantsController < ApplicationController

  def index
    @merchants = RailsEngineFacade.merchant_list
  end

  def show
    @merchant = RailsEngineFacade.one_merchant(params[:id])
    @items = RailsEngineFacade.merchant_item_list(params[:id])
  end 
end

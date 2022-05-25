class MerchantsController < ApplicationController
  def index
    @merchants = RailsEngineFacade.merchants
  end

  def show
    @merchant = RailsEngineFacade.find_merchant(params[:id])
    @items = RailsEngineFacade.items_for(params[:id])
  end
end

class MerchantItemsController < ApplicationController
  def show
    merch_items = MerchantFacade.merch_items(params[:id])
  end
  def index
    @merch_items = MerchantFacade.merch_items(params[:id])
  end
end

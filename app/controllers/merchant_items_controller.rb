class MerchantItemsController < ApplicationController

  def show
    @merchant = MerchantFacade.create_merchant(params[:id])
    
    @items = @merchant.items
  end
end

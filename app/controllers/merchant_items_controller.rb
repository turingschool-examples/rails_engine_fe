class MerchantItemsController << ApplicationController
  def show
    merch_items = MerchantFacade.merch_items(params[:id])
  end
end

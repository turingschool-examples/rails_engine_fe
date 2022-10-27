class MerchantsController < ApplicationController 
  def index 
    @merchants = MerchantsFacade.find_all_merchants
  end

  def show
    merchant_id = params[:id]
    @merchant = MerchantsFacade.find_merchant(merchant_id)

    items_response = Faraday.get("http://localhost:3000/api/v1/merchants/#{params[:id]}/items")
    @items = JSON.parse(items_response.body, symbolize_names: true)[:data]
  end
end
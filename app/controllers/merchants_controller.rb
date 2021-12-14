class MerchantsController < ApplicationController

  def new
  end

  def index
    @merchants = MerchantFacade.find_merchants
    #require "pry"; binding.pry
  end

  def show
    @merchant = MerchantFacade.find_one_merchant(params[:id].to_i)

    items_response = Faraday.get("http://localhost:3000/api/v1/merchants/#{params[:id].to_i}/items")
    #require "pry"; binding.pry
    @items = JSON.parse(items_response.body, symbolize_names: true)[:data]
    #require "pry"; binding.pry
  end
end

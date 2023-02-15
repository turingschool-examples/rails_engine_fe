# frozen_string_literal: true

class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.all_merchants
  end

  def show
    @merchant = MerchantFacade.merchant(params[:id])
    @items = ItemFacade.merchant_items(params[:id])
  end
end

# frozen_string_literal: true

class MerchantsController < ApplicationController
  def index
    @merchants = EngineFacade.create_merchants
  end

  def show
    @merchant = EngineFacade.create_merchant(params[:id])
    @items = EngineFacade.merchant_items(params[:id])
  end
end

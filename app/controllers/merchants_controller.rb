# frozen_string_literal: true

class MerchantsController < ApplicationController
  def index
    @merchants = EngineFacade.create_merchants
  end

  def show
    @merchant = EngineFacade.create_merchant(params[:id])
  end
end

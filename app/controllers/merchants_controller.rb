class MerchantsController < ApplicationController
  @@facade = HeaderFacade.new
  def index
    @merchants = @@facade.merchants
  end

  def show
    @merchant = @@facade.one_merchant(params[:id])
  end
end

class MerchantsController < ApplicationController
  def index
    @merchants = RailsEngineFacade.merchants
  end

  def show

  end
end

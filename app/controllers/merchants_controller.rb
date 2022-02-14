class MerchantsController < ApplicationController

  def index
    @merchants = RailsEngineFacade.merchant_list
  end
end 

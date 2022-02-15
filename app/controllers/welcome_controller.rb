class WelcomeController < ApplicationController

  def index

  end
  def find_all
    @merchants = MerchantFacade.merchant_search(params[:search])
    render 'welcome/index'
  end


end

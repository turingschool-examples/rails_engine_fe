class WelcomeController < ApplicationController
  def index
    if params[:search].present?
      @merchant = MerchantsFacade.find(params[:search])
    end
  end
end
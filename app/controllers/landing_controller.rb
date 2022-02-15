class LandingController < ApplicationController
  before_action :start_facade, only: [:index]

  def index
    if params[:search]
      @merchant = @facade.find_merchant(params[:search])
    end
  end

  private

  def start_facade
    @facade = MerchantsFacade.new
  end
end

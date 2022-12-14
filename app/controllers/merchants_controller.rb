class MerchantsController < ApplicationController
  before_action :find_merchants, only: %i[index]

  def index
    if params[:search] == ''
      flash[:error] = 'Text field must be filled in'
      render :index
    elsif params[:search]
      @search = params[:search]
      @merchants = MerchantFacade.find_all_merchants(params[:search])
    end
  end

  def show
    @merchant = MerchantFacade.get_merchant(params[:id])
    @items = MerchantFacade.get_merchant_items(params[:id])
  end

  private

  def find_merchants
    @merchants = MerchantFacade.get_merchants
  end
end
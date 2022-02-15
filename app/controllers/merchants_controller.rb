class MerchantsController < ApplicationController
  before_action :merchant_facade, only: [:index, :show]
  before_action :set_merchant, only: [:show]

  def index; end

  def show
    @items = @merchant_facade.get_merchant_items(@merchant.id)
  end

  private

  def merchant_facade
    @merchant_facade = MerchantsFacade.new
  end

  def set_merchant
    @merchant = @merchant_facade.get_merchant(params[:id])
  end
end

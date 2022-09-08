# frozen_string_literal: true

class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.list_merchants
  end

  def show
    # @merchant = MerchantFacade.show_merchant()
  end
end
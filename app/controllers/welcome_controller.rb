# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    @merchants = MerchantFacade.find_merchants(params[:q]) if params[:q]
  end
end

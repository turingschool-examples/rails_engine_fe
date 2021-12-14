class WelcomeController < ApplicationController
  def index
    @searched_merchants = WelcomeFacade.find(params[:name])
  end



end

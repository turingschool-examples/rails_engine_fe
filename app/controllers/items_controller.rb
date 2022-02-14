class ItemsController < ApplicationController
  def index
  end

  def show
    @item = RailsEngineFacade.one_item(params[:id])
  end
end

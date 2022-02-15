class ItemsController < ApplicationController
  before_action :start_facade, only: [:show]

  def show
    @item = @items_facade.get_item(params[:id])
  end

  private

  def start_facade
    @items_facade = ItemsFacade.new
  end
end

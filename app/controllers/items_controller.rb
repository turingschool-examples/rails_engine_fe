# frozen_string_literal: true

class ItemsController < ApplicationController
  def index
    @items = ItemFacade.get_items
  end

  def show
    @item = ItemFacade.get_item(params[:id])
  end
end

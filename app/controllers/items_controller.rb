# frozen_string_literal: true

class ItemsController < ApplicationController
  def index
    @items = EngineFacade.create_items
  end

  def show
    @item = EngineFacade.create_item(params[:id])
  end
end

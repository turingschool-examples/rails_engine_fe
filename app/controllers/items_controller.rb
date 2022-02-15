class ItemsController < ApplicationController
  def connection
    Faraday.new(url: 'http://localhost:3000/')
  end

  def show

    response = connection.get("api/v1/items/#{params[:item_id]}")
    @item = JSON.parse(response.body, symbolize_names: true)
  end

end

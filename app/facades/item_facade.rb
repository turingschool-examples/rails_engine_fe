# frozen_string_literal: true

class ItemFacade
  def self.items_list
    json = ItemService.get_items
    json[:data].map do |merch|
      Item.new(merch)
    end
  end

  def self.item(item_id)
    json = ItemService.get_item(item_id)
    Item.new(json[:data])
  end

  def self.item_merch(item_id)
    json = ItemService.get_item_merch(item_id)
    Merchant.new(json[:data])
  end

  # def self.top_20_movie_list
  #   movie_list_data = MovieService.top_rated_movies

  #   movie_list_data[:results].map do |movie|
  #     Movie.new(movie)
  #   end
  # end

  # def self.search_movie_list(string)
  #   movie_list_data = MovieService.search_movies(string)

  #   movie_list_data.map do |movie|
  #     Movie.new(movie)
  #   end
  # end
end

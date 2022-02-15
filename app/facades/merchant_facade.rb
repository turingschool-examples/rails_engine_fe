# frozen_string_literal: true

class MerchantFacade
  def self.merchants_list
    json = MerchantService.get_merchants
    json[:data].map do |merch|
      Merchant.new(merch)
    end
  end
  
  def self.merchant(merch_id)
    json = MerchantService.get_merchant(merch_id)
    Merchant.new(json[:data])
  end
  
  def self.merch_items(merch_id)
    json = MerchantService.get_merch_items(merch_id)
    json[:data].map do |item|
      Item.new(item)
    end
  end
  
  def self.found_merchant(string)
    json = MerchantService.find_merchant(string)
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

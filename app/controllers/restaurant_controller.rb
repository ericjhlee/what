class RestaurantController < ApplicationController
  def index
  	yo = Restaurant.new
  	# @yelp = api.client
  	@yelp = yo.food
  end
end

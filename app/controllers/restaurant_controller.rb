class RestaurantController < ApplicationController
  def index
  	@yelp = yelp_client.location.businesses
  	
  	
  end


end

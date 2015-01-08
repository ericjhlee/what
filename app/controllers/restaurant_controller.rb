class RestaurantController < ApplicationController
  def index
  	lat = cookies[:lat_lng].split("|")[0]
    lng = cookies[:lat_lng].split("|")[1]
  	@yelp = yelp_client.test(lat, lng).businesses
  	
  	
  end


end

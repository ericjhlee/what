class RestaurantController < ApplicationController
  def index
  	@yelp = yelp_client.test(lat, lng).businesses
  end

  private

  def lat
  	cookies[:lat_lng].split("|")[0]
  end

  def lng
  	cookies[:lat_lng].split("|")[1]
  end

end

require 'yelp'

class Restaurant

	def initialize
		yelp_api
	end

	def yelp_api
		@client = Yelp::Client.new({ consumer_key: 'z9ZJGiqysEN3lAmY_1avUA', 
									  consumer_secret: 'my4TeKx3LvZMmb2h051vYI7Ppwo',
									  token: 'Ugt0RjpcYSnxwvZNAQWelSYUnAS-qoq7',
									  token_secret: 'aboWTvetW-IQe0JMkXJBUGUo428'
                      	  })
	end

	def food
		@client.search('Vancouver', { term: 'restaurants' }, {radius_filter: 1000})
	end

	def test(lat, lng)
		params = { term: 'food',
           limit: 20,
           radius_filter: 1000
         }

    coordinates = { latitude: lat, longitude: lng } 
		
		@client.search_by_coordinates(coordinates, params)
	end


end

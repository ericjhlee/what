require 'yelp'

class Restaurant

	def initialize
		yelp_api
	end

	def yelp_api
		@client = Yelp::Client.new({ consumer_key: 'z9ZJGiqysEN3lAmY_1avUA', 
									  consumer_secret: 'my4TeKx3LvZMmb2h051vYI7Ppwo',
									  token: 'zXTKld36K2qyxfooinwZfet1sJFYJ8ZN',
									  token_secret: 'LbkzfAK2mLVotnu5SARfcEE7uk4'
                      	  })
	end

	def food
		@client.search('Vancouver', { term: 'restaurants' }, {radius_filter: 1000})
	end

end

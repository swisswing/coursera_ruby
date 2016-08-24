class Recipe
	include HTTParty

	ENV['FOOD2FORK_KEY'] = '67de6b1f2b65fbe408f13e1da985ad42'
		base_uri 'http://food2fork.com/api'
		default_params key: ENV['FOOD2FORK_KEY']
		format :json

		def self.for term

		get("/search", query: { q: term})["recipes"]

		end

end
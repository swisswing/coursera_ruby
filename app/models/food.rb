class Food

		FOOD2FORK_KEY = '67de6b1f2b65fbe408f13e1da985ad42'
		base_uri = 'http://food2fork.com/api/search'
		default_params key: FOOD2FORK_KEY
		format: json

		def self.for term
		get("", q: { q: term})["recipes"]

		end


end
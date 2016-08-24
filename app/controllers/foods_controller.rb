class FoodsController < ApplicationController
  def index
  	@search_term = params[:keyword]
  	@foods = Food.for(@search_term)
  end
end

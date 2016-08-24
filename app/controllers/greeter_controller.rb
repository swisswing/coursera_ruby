class GreeterController < ApplicationController
  def hello
  	random_names = ["Tom","Mary","Sonia"]
  	@abc = random_names.sample()
  	@time = Time.now
  	@time_displayed ||= 0
  	@time_displayed += 1
  end

  def bye
  end
end

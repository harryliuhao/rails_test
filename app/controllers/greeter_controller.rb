class GreeterController < ApplicationController
  def hello
  	random_names=["Hao", "Yu", "Kai", "Rhee"]
  	@name=random_names.sample
  	@time=Time.now
  	@time_displayed ||=0
  	@time_displayed +=1
  end
  def goodbye
  end
end

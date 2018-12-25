class StaticPagesController < ApplicationController
  def home
  	render html: "hello static pageeeeeeeeeeeeees" #only testing
  end

  def help
  end
end

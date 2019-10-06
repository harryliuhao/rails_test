class CoursesController < ApplicationController
  def index
  	@search_term=params[:looking_for] ||'cooking'
  	@books=Books.for(@search_term)
  end
end

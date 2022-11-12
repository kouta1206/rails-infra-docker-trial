class MoviesController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    binding.pry
    if @movie.save
      redirect_to movies_index_path
    else
      render :new
    end
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :director, :release, :viewing, :review).merge(user_id: current_user.id)
  end
end

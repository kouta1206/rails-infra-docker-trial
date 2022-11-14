class MoviesController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.starrings.build(starring_params)

    if @movie.save
      redirect_to movies_index_path
    else
      render :new
    end
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :director, :release, :viewing, :review, :evaluation, :image_path).merge(user_id: current_user.id)
  end

  def starring_params
    params.require(:starring).permit(:name)
  end
end

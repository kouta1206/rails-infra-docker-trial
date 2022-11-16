class MoviesController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def new
    @movie = Movie.new
    @movie.starrings.build
    @movie.genres.build
    @starring_names = Starring.all().map{ |starring| {"text" => starring.name} }
    @genre_names = Genre.all().map { |genre| {"text" => genre.name} }
    respond_to do |format|
      format.html
      format.json { render :json => @starring_names }
      format.json { render :json => @genre_names }
    end
  end

  def create
    @movie = Movie.create(movie_params)
    if @movie.save
      starring_params.each do |starring|
        @movie.starrings.find_or_create_by!(name: starring)
      end
      genre_params.each do |genre|
        @movie.genres.find_or_create_by!(name: genre)
      end
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

    starring_json_params = params.require(:starring).permit(:name)
    starring_json_params_names = starring_json_params[:name]
    starring_names = JSON.parse(starring_json_params_names)

    starring_names_params = starring_names.map { |starring_name| starring_name["text"] }
  end

  def genre_params
    genre_json_params = params.require(:genre).permit(:name)
    genre_json_names = genre_json_params[:name]
    genre_array_names = JSON.parse(genre_json_names)

    genre_array_texts = genre_array_names.map { |genre_array_name| genre_array_name["text"] }
  end
end
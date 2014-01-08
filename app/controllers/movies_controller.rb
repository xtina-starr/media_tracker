class MoviesController < ApplicationController

  def index
    
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(movie_params)
    if @movie.save
      redirect_to movies_show_path
    else
      render 'new'
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end


  def edit
    @movie = Movie.find(params[:id])
  end

  private

  def movie_params
    params.require(:movie).permit(:movie_name, :director, :description)
  end
end
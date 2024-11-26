class MoviesController < ApplicationController
    before_action :set_character
  
    def new
      @movie = @character.movies.new
    end
  
    def create
      @movie = @character.movies.new(movie_params)
      if @movie.save
        redirect_to character_path(@character)
      else
        render :new
      end
    end


    def show
        @movie = @character.movies.find(params[:id])
    end
    
    private
    
  
    private
  
    def set_character
      @character = Character.find(params[:character_id])
    end
  
    def movie_params
      params.require(:movie).permit(:name, :year, :awards, :comics, :comics_link)
    end
  end
  
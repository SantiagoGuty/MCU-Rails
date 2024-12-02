class MoviesController < ApplicationController
    before_action :set_character
    before_action :set_movie, only: [:show, :edit, :update, :destroy, :confirm_delete]
    #before_action :set_movie, only: %i[show edit update]
  


    def edit
      # The @movie instance variable will be used in the edit view
    end
  
    def update
      if @movie.update(movie_params)
        redirect_to character_movie_path(@character, @movie), notice: 'Movie was successfully updated.'
      else
        render :edit, status: :unprocessable_entity
      end
    end
    
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

    def confirm_delete
      # Render confirmation page
    end
  
    # Destroy action
    def destroy
      @movie.destroy
      redirect_to character_path(@character), notice: 'Movie was successfully deleted.'
    end


    def show
      @movie = @character.movies.find(params[:id])
    end
    
    private
    
  
    private
  
    def set_character
      @character = Character.find(params[:character_id])
    end

    def set_movie
      @movie = @character.movies.find(params[:id])
    end
  
    def movie_params
      params.require(:movie).permit(:name, :year, :awards, :comics, :comics_link, :image)
    end
  end
  
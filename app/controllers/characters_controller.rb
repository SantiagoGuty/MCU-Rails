class CharactersController < ApplicationController
    def index
      @characters = Character.all
      @random_character = Character.order("RANDOM()").first # Fetch a random character
    end
  
    def show
      @character = Character.find(params[:id])
      @movies = @character.movies # Fetch movies associated with the character
    end
  
    def new
      @character = Character.new
    end
  
    def create
      @character = Character.new(character_params)
      if @character.save
        redirect_to @character
      else
        render :new
      end
    end

    def destroy
        @character = Character.find(params[:id])
        @character.destroy
        redirect_to characters_path, notice: 'Character was successfully deleted.'
    end

    def confirm_delete
      @character = Character.find(params[:id])
    end
    

    def edit
        @character = Character.find(params[:id])
    end
    
    def update
        @character = Character.find(params[:id])
        if @character.update(character_params)
          redirect_to @character, notice: 'Character was successfully updated.'
        else
          render :edit
        end
    end
    
      
  
    private
  
    def character_params
        params.require(:character).permit(:name, :description, :origin, :actor, :actor_link, :comics_first_apparition, :profile_image, :action_image, :phrase)
    end
  end
  
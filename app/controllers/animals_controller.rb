class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
    render :index
  end

  def show
    @animal = Animal.find(params[:id])
    render :display
  end

  def new
    @animal = Animal.new
    render :new
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      redirect_to animals_path
    else
      render :new
    end
  end

  private
    def animal_params
      params.require(:animal).permit(:kind)
    end

end

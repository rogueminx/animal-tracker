class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
    @seen_animals = Animal.sighted
    @unseen_animals = Animal.not_sighted
    @recent_sightings = Sighting.recent_sightings

    @current_sightings = Sighting.current_sightings
  end

  def show
    @animal = Animal.find(params[:id])
    @sightings = @animal.sightings.sort_by {|obj| obj.date}
    render :display
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      flash[:notice] = "Your animal was added to the list"
      redirect_to animals_path
    else
      render :new
    end
  end

  def edit
    @animal = Animal.find(params[:id])
    # render :edit
    # if render :edit matches def edit, render :edit can be removed
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update(animal_params)
      redirect_to animals_path
    else
      render :edit
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to animals_path
  end

  private
    def animal_params
      params.require(:animal).permit(:kind, :sighted)
    end

end

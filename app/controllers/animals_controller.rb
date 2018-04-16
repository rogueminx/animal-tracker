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

end

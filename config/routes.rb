Rails.application.routes.draw do
  #this will take us to the homepage on opening the application
  root :to => 'animals#index'

  resources :animals do
    resources :sightings, :except => [:show, :index]
  end
end

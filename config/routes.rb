Farmhouse::Application.routes.draw do
  resources :links, :locations, :people, :photos, :tweets, :videos, :websites

  resources :confs do
    resources :talks
  end

  resources :speakings, :only => [:destroy]

  match "/websites/new/:whom" => "websites#new", :as => "new_person_website"

  root :to => "confs#index"
end

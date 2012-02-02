Farmhouse::Application.routes.draw do
  resources :confs, :links, :locations, :people, :photos, :talks, :tweets, :videos, :websites

  resources :speakings, :only => [:destroy]

  match "/websites/new/:whom" => "websites#new", :as => "new_person_website"

  root :to => "confs#index"
end

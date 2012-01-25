Farmhouse::Application.routes.draw do
  resources :confs, :locations, :people, :photos, :talks, :videos, :websites
  match "/websites/new/:whom" => "websites#new", :as => "new_person_website"

  root :to => "confs#index"
end

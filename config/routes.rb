Farmhouse::Application.routes.draw do
  resources :websites
  match "/websites/new/:whom" => "websites#new", :as => "new_person_website"

  resources :people, :confs, :locations
end

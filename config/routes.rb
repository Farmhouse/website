Farmhouse::Application.routes.draw do
  resources :websites
  match "/websites/new/:whom" => "websites#new"

  resources :people, :confs, :locations
end

Farmhouse::Application.routes.draw do
  root :to => "confs#show"

  match "/:year"             => "confs#show",  :as => "year"
  match "/:year/talks"       => "talks#index", :as => "year_talks"
  match "/:year/talks/:slug" => "talks#show",  :as => "year_talk"
  match "/people/:slug"      => "people#show", :as => "person_slug"


  # adminy routes
  unless Rails.env.development?
    resources :confs, :links, :locations, :people, :photos, :talks, :tweets, :videos, :websites
    resources :speakings, :only => [:destroy]
    match "/websites/new/:whom" => "websites#new", :as => "new_person_website"
  end
end

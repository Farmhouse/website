Farmhouse::Application.routes.draw do
  root :to => "about#index"

  match "/rules"             => "about#rules",    :as => "rules"
  match "/register"          => "about#register", :as => "register"
  match "/us"                => "about#us",       :as => "us"
  match "/house"             => "about#house",    :as => "house"

  match "/prospectus"        => redirect("/conf/sponsor"), :as => "prospectus"
  match "/conf/sponsor"      => "confs#sponsor",           :as => "sponsor"

  match "/conf"              => redirect("/2012")

  match "/:year"             => "confs#show",     :as => "year"
  match "/:year/photos"      => "photos#index",   :as => "year_photos"
  match "/:year/talks"       => "talks#index",    :as => "year_talks"
  match "/:year/talks/:slug" => "talks#show",     :as => "year_talk"

  match "/people/:slug"      => "people#show",    :as => "person_slug"


  # adminy routes
  unless Rails.env.development?
    resources :confs, :links, :locations, :people, :photos, :talks, :tweets, :videos, :websites
    resources :speakings, :only => [:destroy]
    match "/websites/new/:whom" => "websites#new", :as => "new_person_website"
  end
end

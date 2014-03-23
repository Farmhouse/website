Farmhouse::Application.routes.draw do
  # REDIRECTS...

  # conf by year redirects to conf by id
  match "/2011"            => redirect("/conf/1")
  match "/2012"            => redirect("/conf/2")
  match "/2013"            => redirect("/conf/3")
  match "/conf/2011"       => redirect("/conf/1")
  match "/conf/2012"       => redirect("/conf/2")
  match "/conf/2013"       => redirect("/conf/3")
  match "/conf/2011/talks" => redirect("/conf/1")
  match "/conf/2012/talks" => redirect("/conf/2")
  match "/conf/2013/talks" => redirect("/conf/3")

  # fhc1 talks
  match "/2011/talks/evan-phoenix"    => redirect("/conf/1/evan-phoenix")
  match "/2011/talks/leah-silber"     => redirect("/conf/1/leah-silber")
  match "/2011/talks/sean-bonner"     => redirect("/conf/1/sean-bonner")
  match "/2011/talks/micki-krimmel"   => redirect("/conf/1/micki-krimmel")
  match "/2011/talks/tj-nelson-jr"    => redirect("/conf/1/tj-nelson-jr")
  match "/2011/talks/sarah-mei"       => redirect("/conf/1/sarah-mei")
  match "/2011/talks/eli-duke"        => redirect("/conf/1/eli-duke")
  match "/2011/talks/meghann-millard" => redirect("/conf/1/meghann-millard")
  match "/2011/talks/suzan-bond"      => redirect("/conf/1/suzan-bond")
  match "/2011/talks/aaron-patterson" => redirect("/conf/1/aaron-patterson")

  # fhc1 talks
  match "/2012/talks/mapping-the-la-tech-scene"                                                                       => redirect("/conf/2/mapping-the-la-tech-scene")
  match "/2012/talks/the-map-from-trauma-to-survival"                                                                 => redirect("/conf/2/the-map-from-trauma-to-survival")
  match "/2012/talks/navigating-the-gender-landscape"                                                                 => redirect("/conf/2/navigating-the-gender-landscape")
  match "/2012/talks/the-map-versus-the-territory"                                                                    => redirect("/conf/2/the-map-versus-the-territory")
  match "/2012/talks/how-einstein-led-me-to-bliss--a-carnie-kingdom--and-pioneering-new-methods-in-video-mapping"     => redirect("/conf/2/how-einstein-led-me-to-bliss")
  match "/2012/talks/there-rsquo-s-no-map-for-inventiveness"                                                          => redirect("/conf/2/theres-no-map-for-inventiveness")
  match "/2012/talks/mapping-a-way-to-the-stars-by-disrupting-the-status-quo"                                         => redirect("/conf/2/mapping-a-way-to-the-stars")
  match "/2012/talks/culture-reboot--mapping-open-spaces-and-collaborative-practices-in-the-emergent-network-economy" => redirect("/conf/2/culture-reboot-mapping-open-spaces")
  match "/2012/talks/falling-off-the-map--the-skid-row-life-cycle"                                                    => redirect("/conf/2/falling-off-the-map-skid-row-life-cycle")
  match "/2012/talks/mapping-with-wit-z-"                                                                             => redirect("/conf/2/mapping-with-witz")

  # fhc3 talks
  match "/2013/talks/meme--myself--and-eye-" => redirect("/conf/3/meme-myself-and-eye")

  # ...REDIRECTS





  root to: "about#index"

  # homepage mailing list sign up
  resources :mailing_lists, only: [:create]

  # labs
  match "/bs"                   => redirect("/labs")
  match "/labs"                 => redirect("/labs/learn-to-code/1")
  match "/labs/learn-to-code/1" => ("labs#index")
  match "/labs/learn-to-code"   => redirect("/labs/learn-to-code/1")


  # barn talks
  match "/barn-talks"                    => redirect("/barn-talks/1-warren-ellis"), as: "barn_talks"
  match "/barn-talks/1"                  => redirect("/barn-talks/1-warren-ellis")
  match "/barn-talks/1-warren-ellis"     => ("barn_talks#show")
  match "/barn-talks/2"                  => redirect("/barn-talks/1-warren-ellis")
  match "/barn-talks/2-margaret-killjoy" => redirect("/barn-talks/1-warren-ellis")


  # about
  match "/rules"      => "about#rules",      as: "rules"
  match "/register"   => "about#register",   as: "register"
  match "/us"         => "about#us",         as: "us"
  match "/house"      => "about#house",      as: "house"
  match "/sandwiches" => "about#sandwiches", as: "sandwiches"
  match "/barn"       => "about#barn",       as: "barn"
  match "/location"   => "about#location",   as: "location"
  match "/civ"        => "about#civ",        as: "civ"

  # memberships
  match "/memberships"       => "memberships#index",     as: "memberships"
  match "/memberships/:slug" => "memberships#show",      as: "membership"

  # conf
  match "/conf/code-of-conduct" => "confs#code_of_conduct",   as: "code_of_conduct"
  match "/prospectus"           => redirect("/conf/sponsor"), as: "prospectus"
  match "/conf/sponsor"         => "confs#sponsor",           as: "sponsor"

  match "/conf"                 => redirect("/conf/5")

  match "/conf/:id"             => "confs#show",              as: "conf"
  match "/conf/:id/photos"      => "photos#index",            as: "conf_photos"
  match "/conf/:id/talks"       => "talks#index",             as: "conf_talks"
  match "/conf/:id/:slug"       => "talks#show",              as: "conf_talk"

  # ??? delete
  match "/people/:slug"    => "people#show",             as: "person_slug"

  # podcast
  match "/podcast/feed"    => "podcast#feed",            as: "podcasts_feed"
  match "/podcast"         => "podcast#index",           as: "podcasts"
  match "/podcast/sponsor" => "podcast#sponsor",         as: "podcast_sponsor"
  match "/podcast/:id"     => "podcast#show",            as: "podcast"

  # publishing
  match "/publishing"         => "publishing#index",     as: "publishing"
  match "/publishing/:id"     => "publishing#show",      as: "publication"

  # shop
  match "/shop"               => redirect("http://shop.farmhouse.la"), as: "shop"


  namespace :admin do
    resources :episodes #podcast admin
  end
end

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





  match "/bs" => redirect("/labs")
  resources :labs

  root :to => "about#index"

  match "/rules"           => "about#rules",             :as => "rules"
  match "/register"        => "about#register_4",        :as => "register"
  match "/register/5"      => "about#register_5",        :as => "register_5"
  match "/us"              => "about#us",                :as => "us"
  match "/house"           => "about#house",             :as => "house"

  match "/prospectus"      => redirect("/conf/sponsor"), :as => "prospectus"
  match "/conf/sponsor"    => "confs#sponsor",           :as => "sponsor"

  match "/conf"            => redirect("/conf/3")

  match "/conf/:id"        => "confs#show",              :as => "conf"
  match "/conf/:id/photos" => "photos#index",            :as => "conf_photos"
  match "/conf/:id/talks"  => "talks#index",             :as => "conf_talks"
  match "/conf/:id/:slug"  => "talks#show",              :as => "conf_talk"

  match "/people/:slug"    => "people#show",             :as => "person_slug"

  match "/podcast"         => "podcast#index",           :as => "podcast"
  match "/podcast/feed"    => "podcast#feed",            :as => "podcast_feed"
end

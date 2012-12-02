class Episode < ActiveRecord::Base
  attr_accessible :authors, :duration, :enclosure_length, :episode, :itunes_summary, :keywords, :published_at, :season, :subtitle, :summary, :title, :url
end

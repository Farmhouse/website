class PodcastController < ApplicationController
  def index
    @slug = "podcast"
  end

  def feed
    render :template => "/podcast/feed.xml",  :layout => false
  end
end

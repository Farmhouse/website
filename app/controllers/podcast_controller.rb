class PodcastController < ApplicationController
  def index
    @slug = "podcast"
    @title = "The Farmhouse Podcast - Subscribe Now"
  end

  def feed
    render :template => "/podcast/feed.xml",  :layout => false
  end
end

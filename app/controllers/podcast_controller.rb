class PodcastController < ApplicationController
  def index
  end

  def feed
    render :template => "/podcast/feed.xml",  :layout => false
  end
end

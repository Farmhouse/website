class PodcastController < ApplicationController
  def index
    @slug = "podcast"
    @title = "The Farmhouse Podcast - Subscribe Now"
    @episode = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
  end

  def feed
    render :template => "/podcast/feed.xml",  :layout => false
  end
end

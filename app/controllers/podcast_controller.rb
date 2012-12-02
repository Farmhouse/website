class PodcastController < ApplicationController
  def index
    @slug     = "podcast"
    @title    = "The Farmhouse Podcast - Subscribe Now"
    @episodes = Episode.all
  end

  def show
    @slug    = "podcast-episode"
    @episode = Episode.find(params[:id])
    @title   = "The Farmhouse Podcast : S01E#{@episode.episode} : #{@episode.title}"
  end

  def feed
    @episodes = Episode.all
    render :template => "/podcast/feed.xml",  :layout => false
  end
end

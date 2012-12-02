class Admin::EpisodesController < ApplicationController
  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.new(params[:episode])

    if @episode.save
      redirect_to admin_episode_path(@episode), notice: 'Episode was successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @episode = Episode.find(params[:id])
  end

  def update
    @episode = Episode.find(params[:id])

    if @episode.update_attributes(params[:episode])
      redirect_to admin_episode_path(@episode), notice: 'Episode was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @episodes = Episode.find(params[:id])
    @episodes.destroy
    redirect_to admin_episodes_path
  end
end

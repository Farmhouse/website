class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])
  end

  def new
    @video = Video.new
  end

  def edit
    @video = Video.find(params[:id])
  end

  def create
    @video = Video.new(params[:video])

    if @video.save
      redirect_to @video, :notice => 'Video was successfully created.'
    else
      render :action => "new"
    end
  end

  def update
    @video = Video.find(params[:id])

    if @video.update_attributes(params[:video])
      redirect_to @video, :notice => 'Video was successfully updated.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to videos_path
  end
end

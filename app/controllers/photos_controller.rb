class PhotosController < ApplicationController
  before_filter :redirect_to_root_in_development

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def create
    @photo = Photo.new(params[:photo])

    if @photo.save
      redirect_to @photo, :notice => 'Photo was successfully created.'
    else
      render :action => "new"
    end
  end

  def update
    @photo = Photo.find(params[:id])

    if @photo.update_attributes(params[:photo])
      redirect_to @photo, :notice => 'Photo was successfully updated.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_path
  end
end

class ConfsController < ApplicationController
  before_filter :redirect_to_root_in_development, :except => [:show]

  def show
    if params[:year].blank?
      @conf = Conf.order("year ASC").first
    else
      @conf = Conf.where(:year => params[:year]).first
    end
  end

  def index
    @confs = Conf.all
  end

  def new
    @conf = Conf.new
  end

  def edit
    @conf = Conf.find(params[:id])
  end

  def create
    @conf = Conf.new(params[:conf])

    if @conf.save
      redirect_to @conf, :notice => "Conf was successfully created."
    else
      render :action => "new"
    end
  end

  def update
    @conf = Conf.find(params[:id])

    if @conf.update_attributes(params[:conf])
      redirect_to @conf, :notice => "Conf was successfully updated."
    else
      render :action => "edit"
    end
  end

  def destroy
    @conf = Conf.find(params[:id])
    @conf.destroy
    redirect_to confs_path
  end
end

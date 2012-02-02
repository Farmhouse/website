class WebsitesController < ApplicationController
  before_filter :redirect_to_root_in_development

  def index
    @websites = Website.all
  end

  def show
    @website = Website.find(params[:id])
  end

  def new
    @website = Website.new

    if params[:whom].blank?
      redirect_to new_person_website_path("person")
    end
  end

  def edit
    @website = Website.find(params[:id])
  end

  def create
    @website = Website.new(params[:website])

    if @website.save
      redirect_to @website, :notice => "Website was successfully created."

      if params[:person_id]
        Person.find(params[:person_id]).websites << @website
      elsif params[:sponsor_id]
        Sponsor.find(params[:sponsor_id]).websites << @website
      end
    else
      render :action => "new"
    end
  end

  def update
    @website = Website.find(params[:id])

    if @website.update_attributes(params[:website])
      redirect_to @website, :notice => "Website was successfully updated."
    else
      render :action => "edit"
    end
  end

  def destroy
    @website = Website.find(params[:id])
    @website.destroy
    redirect_to websites_path
  end
end

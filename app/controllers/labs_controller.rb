class LabsController < ApplicationController
  def index
    @lab = Lab.new
  end

  def create
    @lab = Lab.new(params[:lab])

    if @lab.save
      redirect_to labs_path, :notice => "Lab was successfully created."
    else
      render :action => "index"
    end
  end
end

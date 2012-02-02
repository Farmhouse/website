class TalksController < ApplicationController
  def show
    conf = Conf.where(:year => params[:year]).first
    @talk = conf.talks.where(:slug => params[:slug]).first
  end

  def index
    @talks = Talk.all
  end

  def new
    @talk = Talk.new
  end

  def edit
    @talk = Talk.find(params[:id])
  end

  def create
    @talk = Talk.new(params[:talk])

    if @talk.save
      Person.find(params[:person_id]).talks << @talk

      redirect_to @talk, :notice => 'Talk was successfully created.'
    else
      render :action => "new"
    end
  end

  def update
    @talk = Talk.find(params[:id])

    if @talk.update_attributes(params[:talk])
      unless params[:person_id].blank?
        @talk.people << Person.find(params[:person_id])
      end

      redirect_to @talk, :notice => 'Talk was successfully updated.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @talk = Talk.find(params[:id])
    @talk.destroy
    redirect_to talks_path
  end
end

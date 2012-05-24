class TalksController < ApplicationController
  def show
    @slug  = "talk"
    conf   = Conf.where(:year => params[:year]).first
    @talk  = conf.talks.where(:slug => params[:slug]).first
    @title = %Q{"#{@talk.title}" by #{@talk.people.first.name}}
  end

  def index
    redirect_to year_path(params[:year])
  end
end

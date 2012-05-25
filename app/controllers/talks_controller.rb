class TalksController < ApplicationController
  def show
    @slug  = "talk"
    conf   = Conf.find(params[:id])
    @talk  = conf.talks.where(:slug => params[:slug]).first
    @title = %Q{"#{@talk.title}" by #{@talk.people.first.name}}
  end

  def index
    redirect_to conf_path(params[:id])
  end
end

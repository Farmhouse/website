class BarnTalksController < ApplicationController
  def index
  end

  def show
    if request.path =~ /1/
      @barn_talk_id = 1
    elsif request.path =~ /2/
      @barn_talk_id = 2
    end
  end
end

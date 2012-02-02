class SpeakingsController < ApplicationController
  before_filter :redirect_to_root_in_development

  def destroy
    @speaking = Speaking.find(params[:id])

    talk = Talk.find(@speaking.talk_id)

    @speaking.destroy
    redirect_to talk
  end
end

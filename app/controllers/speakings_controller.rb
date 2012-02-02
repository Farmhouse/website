class SpeakingsController < ApplicationController
  def destroy
    @speaking = Speaking.find(params[:id])

    talk = Talk.find(@speaking.talk_id)

    @speaking.destroy
    redirect_to talk
  end
end

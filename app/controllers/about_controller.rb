class AboutController < ApplicationController
  def register
    redirect_to Conf.latest.first.registration_url
  end
end

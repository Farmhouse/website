class AboutController < ApplicationController
  def index
    @slug = "home"
  end
  
  def rules
    @slug = "rules"
  end

  def register
    redirect_to Conf.latest.first.registration_url
  end
end

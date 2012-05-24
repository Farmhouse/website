class AboutController < ApplicationController
  def index
    @slug = "home"
  end

  def house
    @slug  = "house"
    @title = "A Very Brief and Incomplete History"
  end

  def rules
    @slug  = "rules"
    @title = "Rules"
  end

  def us
    @slug  = "us"
    @title = "Friends and Family"
  end

  def register
    # redirect_to Conf.latest.first.registration_url
    redirect_to "https://farmhouse.eventwax.com/farmhouse-conf-3/register/"
  end
end

class AboutController < ApplicationController
  def index
    @slug = "home"
  end

  def house
    @slug = "house"
  end

  def rules
    @slug = "rules"
  end

  def us
    @slug = "us"
  end

  def register
    # redirect_to Conf.latest.first.registration_url
    redirect_to "https://farmhouse.eventwax.com/farmhouse-conf-3/register/"
  end
end

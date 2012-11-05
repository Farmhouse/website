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

  def register_4
    redirect_to "https://farmhouse.eventwax.com/farmhouse-conf-4/register/"
  end

  def register_5
    redirect_to "https://farmhouse.eventwax.com/farmhouse-conf-5/register/"
  end
end

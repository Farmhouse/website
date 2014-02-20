class AboutController < ApplicationController
  def index
    @slug = "home"
    redirect_to civ_path
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
    redirect_to civ_path
  end

  def civ
    @slug  = "civ"
    @title = "Civ is a dog"
  end

  def register
    redirect_to "https://ti.to/farmhouse/barn-talks-2"
  end
end

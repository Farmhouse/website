class ConfsController < ApplicationController
  def show
    @slug     = "conf"
    @conf     = Conf.find params[:id]
    @sub_slug = "conf-#{@conf.id}"
    @title    = @conf.name
  end

  def code_of_conduct
    @slug  = "code-of-conduct"
    @title = "Farmhouse Conf Code of Conduct"
  end

  def sponsor
    @slug = "sponsor"
    @title = "Farmhouse Conf Sponsor Prospectus"
  end

  def index
    @confs = Conf.all
    @title = "Farmhouse Conf"
  end
end

class ConfsController < ApplicationController
  def show
    @slug  = "conf"
    @conf  = Conf.find params[:id]
    @title = @conf.name
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

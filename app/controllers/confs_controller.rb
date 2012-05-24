class ConfsController < ApplicationController
  def show
    @slug  = "conf"

    if params[:year] !~ /\d{4}/
      year = Conf.latest.first.year
      return redirect_to(year_path(year))
    else
      @conf = Conf.where(:year => params[:year]).first
    end

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

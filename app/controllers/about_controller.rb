class AboutController < ApplicationController
  def index
    @slug = "home"
    @mailing_list = MailingList.new
    render layout: false
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

  def civ
    @slug  = "civ"
    @title = "Civ needs your help."
  end

  def register
  end
end

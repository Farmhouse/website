class ConfsController < ApplicationController
  def show
    @slug     = "conf"
    @conf     = Conf.find params[:id]
    @sub_slug = "conf-#{@conf.id}"
    @title    = @conf.name


    alumni_names = case @conf.id
    when 2
      ["Sean Bonner", "Eli Duke"]
    when 3
      ["Sean Bonner", "Tara Brown", "Mitch Artman"]
    when 4
      ["Eric Gradman", "Megan Dean", "Mitch Artman", "Tara Brown"]
    when 5
      ["Eli Duke", "Evan Phoenix", "Leah Silber", "Aaron Patterson", "Sarah Mei", "Tj Nelson Jr", "Suzan Bond", "Greg Bennick", "Brian", "Mitch Artman", "Tara Brown", "Marc Horowitz", "Nova Han", "Peter Young", "Ron Evans", "willowbl00", "Megan Dean", "Jacob Appelbaum", "Jessica Lord", "Justin Ouellette"]
    else
      []
    end

    @alumni = []
    alumni_names.each do |name|
      @alumni << Person.where(:name => name).first
    end

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

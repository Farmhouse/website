class Country < ActiveRecord::Base
  class << self
    def options_for_select
      countries = []
      usa       =  Country.where(:name => "United States").first
      canadia   =  Country.where(:name => "Canada").first
      countries << [usa.name, usa.id]
      countries << [canadia.name, canadia.id]

      countries + Country.order("name asc").all.map{ |c| [c.name, c.id] }
    end
  end
end

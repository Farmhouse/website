class Location < ActiveRecord::Base
  belongs_to :country
  belongs_to :region

  class << self
    def options_for_select
      Location.all.map{ |l| [l.name, l.id] }
    end
  end
end

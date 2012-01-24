class State < ActiveRecord::Base
  belongs_to :country

  class << self
    def options_for_select
      usa = Country.where(:name => "United States").first
      canadia = Country.where(:name => "Canada").first

      states    = State.where(:country_id => usa.id).order("name asc").all.map{ |c| [c.name, c.id] }
      provinces = State.where(:country_id => canadia.id).order("name asc").all.map{ |c| [c.name, c.id] }

      states + provinces
    end
  end
end

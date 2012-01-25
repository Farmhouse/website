class Conf < ActiveRecord::Base
  belongs_to :location
  has_many :talks

  class << self
    def options_for_select
      Conf.all.map{ |c| [c.name, c.id] }
    end
  end
end

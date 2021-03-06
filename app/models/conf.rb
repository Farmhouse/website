class Conf < ActiveRecord::Base
  belongs_to :location
  has_many :people
  has_many :photos
  has_many :talks
  has_many :videos
  has_many :tweets
  has_many :links

  has_many :sponsorships
  has_many :sponsors, :through => :sponsorships

  class << self
    def options_for_select
      Conf.all.map{ |c| [c.name, c.id] }
    end
  end
end

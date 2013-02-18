class Sponsor < ActiveRecord::Base
  attr_accessible :slug, :url

  has_many :sponsorships
  has_many :confs, :through => :sponsorships
end

class Sponsorship < ActiveRecord::Base
  attr_accessible :conf_id, :level, :sponsor_id

  belongs_to :conf
  belongs_to :sponsor

  scope :party,       where(:level => :party)
  scope :standard,    where(:level => :standard)
  scope :goodie,      where(:level => :goodie)
  scope :food,        where(:level => :food)
  scope :scholarship, where(:level => :scholarship)
end

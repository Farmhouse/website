class Sponsorship < ActiveRecord::Base
  attr_accessible :conf_id, :level, :sponsor_id

  belongs_to :conf
  belongs_to :sponsor
end

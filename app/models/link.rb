class Link < ActiveRecord::Base
  belongs_to :conf
  belongs_to :talk
end
